require_relative "github_api/version"
require_relative "github_api/fetcher"
require_relative "github_api/parser"

module Dinda
  module GithubApi
    def self.perform(repo = 'braspag-rest')
      commits = Fetcher.fetch_commits(repo)

      commits_per_author = Parser.parse(commits)

      ordered_per_author = commits_per_author.values.sort_by { |commit| commit[:commits_count] }.reverse

      ordered_per_author.map! do |commit|
        commit.values.map { |value| value ? value:'-'}.join('; ')
      end

      Dir.mkdir('outputs') unless Dir.exist?('outputs')
      File.open("outputs/#{repo}-#{Time.now}.txt", 'w+') { |f| f.puts ordered_per_author }
    end
  end
end

if ARGV[0]
  Dinda::GithubApi.perform(ARGV[0])
else
  Dinda::GithubApi.perform
end
