require 'net/https'
require 'json'

module Dinda
  module GithubApi
    class Fetcher
      BASE_URL = 'https://api.github.com/repos/Dinda-com-br/'
      @@commits = Hash.new

      def self.fetch_commits(repo = '', per_page = 100)
        return @@commits[repo] if @@commits[repo] && !@@commits[repo].empty?

        @@commits[repo] = []
        current_page = 1
        loop do
          response = Net::HTTP.get_response URI(BASE_URL +
            "#{repo}/commits?page=#{current_page}&per_page=#{per_page}")

          break unless response.kind_of? Net::HTTPSuccess

          page_commits = JSON.parse(response.body)

          @@commits[repo] += page_commits
          if page_commits.size < per_page
            break
          end

          current_page += 1
        end

        @@commits[repo]
      end

      def self.commits
        @@commits
      end

      def self.clear
        @@commits = Hash.new
      end

    end
  end
end
