module Dinda
  module GithubApi
    class Parser
      def self.parse(commits)
        grouped = history.group_by {|item| item['commit']['author']['email']}

        output = Hash[
          grouped.map do |key, item|
            author = item[0]['commit']['author'].clone
            author.merge!(item[0]['author']) if item[0]['author']

            infos = {
              name: author['name'],
              email: author['email'],
              login: author['login'],
              avatar_url: author['avatar_url'],
              commits_count: item.size
            }

            [key, infos]
          end
        ]

        output
      end
    end
  end
end
