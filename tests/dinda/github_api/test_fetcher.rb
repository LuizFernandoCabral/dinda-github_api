require "./lib/dinda/github_api/fetcher"
require "test/unit"


module Dinda
  module GithubApi
    class TestFetcher < Test::Unit::TestCase

      # describe self.fetch_commits
      # context 'when standard use'
      def test_standard_use
        commits = Fetcher.fetch_commits('braspag-rest')

        assert_equal(97, commits.size )

        Fetcher.clear
      end

      # context 'when per page smaller than total'
      def test_small_per_page
        commits = Fetcher.fetch_commits('braspag-rest', 50)

        assert_equal(97, commits.size )

        Fetcher.clear
      end

      # context 'when per page smaller than total'
      def test_two_identical_calls
        commits_a = Fetcher.fetch_commits('braspag-rest')
        commits_b = Fetcher.fetch_commits('braspag-rest')

        assert_equal(commits_a, commits_b)

        Fetcher.clear
      end

      # context 'when no repo specified'
      def test_no_repo
        commits = Fetcher.fetch_commits

        assert_equal(0, commits.size )

        Fetcher.clear
      end
    end
  end
end
