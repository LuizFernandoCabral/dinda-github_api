require "./lib/dinda/github_api/parser"
require "test/unit"


module Dinda
  module GithubApi
    class TestParser < Test::Unit::TestCase

      def commits_stub
        [{"sha"=>"bfd491c52fb9673842c9f2da547632a9756b9ba5", "node_id"=>"MDY6Q29tbWl0MzgwNTk3NDA6YmZkNDkxYzUyZmI5NjczODQyYzlmMmRhNTQ3NjMyYTk3NTZiOWJhNQ==", "commit"=>{"author"=>{"name"=>"Carlos Henrique", "email"=>"carlosoteras@gmail.com", "date"=>"2017-10-18T11:55:30Z"}, "committer"=>{"name"=>"Daniel Coca", "email"=>"daniel.coca@youse.com.br", "date"=>"2017-10-18T11:55:30Z"}, "message"=>"New fields for registered bank slip (#22)\n\n* New field, specify type of identity.\r\n\r\n* Add new field boleto_number, it specify number of boleto.\r\n\r\n* New class responsible for mapping an address to customer.\r\n\r\n* Add address association on customer.\r\n\r\n* Update version.", "tree"=>{"sha"=>"73e8dd01598c3e51b37252c78161d0badc9e7175", "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/git/trees/73e8dd01598c3e51b37252c78161d0badc9e7175"}, "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/git/commits/bfd491c52fb9673842c9f2da547632a9756b9ba5", "comment_count"=>0, "verification"=>{"verified"=>false, "reason"=>"unsigned", "signature"=>nil, "payload"=>nil}}, "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/bfd491c52fb9673842c9f2da547632a9756b9ba5", "html_url"=>"https://github.com/Dinda-com-br/braspag-rest/commit/bfd491c52fb9673842c9f2da547632a9756b9ba5", "comments_url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/bfd491c52fb9673842c9f2da547632a9756b9ba5/comments", "author"=>{"login"=>"soteras", "id"=>7086520, "node_id"=>"MDQ6VXNlcjcwODY1MjA=", "avatar_url"=>"https://avatars3.githubusercontent.com/u/7086520?v=4", "gravatar_id"=>"", "url"=>"https://api.github.com/users/soteras", "html_url"=>"https://github.com/soteras", "followers_url"=>"https://api.github.com/users/soteras/followers", "following_url"=>"https://api.github.com/users/soteras/following{/other_user}", "gists_url"=>"https://api.github.com/users/soteras/gists{/gist_id}", "starred_url"=>"https://api.github.com/users/soteras/starred{/owner}{/repo}", "subscriptions_url"=>"https://api.github.com/users/soteras/subscriptions", "organizations_url"=>"https://api.github.com/users/soteras/orgs", "repos_url"=>"https://api.github.com/users/soteras/repos", "events_url"=>"https://api.github.com/users/soteras/events{/privacy}", "received_events_url"=>"https://api.github.com/users/soteras/received_events", "type"=>"User", "site_admin"=>false}, "committer"=>{"login"=>"danielcoca", "id"=>12816947, "node_id"=>"MDQ6VXNlcjEyODE2OTQ3", "avatar_url"=>"https://avatars3.githubusercontent.com/u/12816947?v=4", "gravatar_id"=>"", "url"=>"https://api.github.com/users/danielcoca", "html_url"=>"https://github.com/danielcoca", "followers_url"=>"https://api.github.com/users/danielcoca/followers", "following_url"=>"https://api.github.com/users/danielcoca/following{/other_user}", "gists_url"=>"https://api.github.com/users/danielcoca/gists{/gist_id}", "starred_url"=>"https://api.github.com/users/danielcoca/starred{/owner}{/repo}", "subscriptions_url"=>"https://api.github.com/users/danielcoca/subscriptions", "organizations_url"=>"https://api.github.com/users/danielcoca/orgs", "repos_url"=>"https://api.github.com/users/danielcoca/repos", "events_url"=>"https://api.github.com/users/danielcoca/events{/privacy}", "received_events_url"=>"https://api.github.com/users/danielcoca/received_events", "type"=>"User", "site_admin"=>false}, "parents"=>[{"sha"=>"86630e021ccd5224f56da575cc2cad261d19e543", "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/86630e021ccd5224f56da575cc2cad261d19e543", "html_url"=>"https://github.com/Dinda-com-br/braspag-rest/commit/86630e021ccd5224f56da575cc2cad261d19e543"}]}, {"sha"=>"86630e021ccd5224f56da575cc2cad261d19e543", "node_id"=>"MDY6Q29tbWl0MzgwNTk3NDA6ODY2MzBlMDIxY2NkNTIyNGY1NmRhNTc1Y2MyY2FkMjYxZDE5ZTU0Mw==", "commit"=>{"author"=>{"name"=>"André Rodrigues", "email"=>"a.andremr@gmail.com", "date"=>"2017-10-18T11:55:21Z"}, "committer"=>{"name"=>"Daniel Coca", "email"=>"daniel.coca@youse.com.br", "date"=>"2017-10-18T11:55:21Z"}, "message"=>"Improve response logging (#23)", "tree"=>{"sha"=>"bd4c7de20b644a1417526944eccece01a8e0edfc", "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/git/trees/bd4c7de20b644a1417526944eccece01a8e0edfc"}, "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/git/commits/86630e021ccd5224f56da575cc2cad261d19e543", "comment_count"=>0, "verification"=>{"verified"=>false, "reason"=>"unsigned", "signature"=>nil, "payload"=>nil}}, "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/86630e021ccd5224f56da575cc2cad261d19e543", "html_url"=>"https://github.com/Dinda-com-br/braspag-rest/commit/86630e021ccd5224f56da575cc2cad261d19e543", "comments_url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/86630e021ccd5224f56da575cc2cad261d19e543/comments", "author"=>{"login"=>"andre-rodrigues", "id"=>674120, "node_id"=>"MDQ6VXNlcjY3NDEyMA==", "avatar_url"=>"https://avatars0.githubusercontent.com/u/674120?v=4", "gravatar_id"=>"", "url"=>"https://api.github.com/users/andre-rodrigues", "html_url"=>"https://github.com/andre-rodrigues", "followers_url"=>"https://api.github.com/users/andre-rodrigues/followers", "following_url"=>"https://api.github.com/users/andre-rodrigues/following{/other_user}", "gists_url"=>"https://api.github.com/users/andre-rodrigues/gists{/gist_id}", "starred_url"=>"https://api.github.com/users/andre-rodrigues/starred{/owner}{/repo}", "subscriptions_url"=>"https://api.github.com/users/andre-rodrigues/subscriptions", "organizations_url"=>"https://api.github.com/users/andre-rodrigues/orgs", "repos_url"=>"https://api.github.com/users/andre-rodrigues/repos", "events_url"=>"https://api.github.com/users/andre-rodrigues/events{/privacy}", "received_events_url"=>"https://api.github.com/users/andre-rodrigues/received_events", "type"=>"User", "site_admin"=>false}, "committer"=>{"login"=>"danielcoca", "id"=>12816947, "node_id"=>"MDQ6VXNlcjEyODE2OTQ3", "avatar_url"=>"https://avatars3.githubusercontent.com/u/12816947?v=4", "gravatar_id"=>"", "url"=>"https://api.github.com/users/danielcoca", "html_url"=>"https://github.com/danielcoca", "followers_url"=>"https://api.github.com/users/danielcoca/followers", "following_url"=>"https://api.github.com/users/danielcoca/following{/other_user}", "gists_url"=>"https://api.github.com/users/danielcoca/gists{/gist_id}", "starred_url"=>"https://api.github.com/users/danielcoca/starred{/owner}{/repo}", "subscriptions_url"=>"https://api.github.com/users/danielcoca/subscriptions", "organizations_url"=>"https://api.github.com/users/danielcoca/orgs", "repos_url"=>"https://api.github.com/users/danielcoca/repos", "events_url"=>"https://api.github.com/users/danielcoca/events{/privacy}", "received_events_url"=>"https://api.github.com/users/danielcoca/received_events", "type"=>"User", "site_admin"=>false}, "parents"=>[{"sha"=>"3459629304482ba53cd554acb9b5539326f53e4a", "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/3459629304482ba53cd554acb9b5539326f53e4a", "html_url"=>"https://github.com/Dinda-com-br/braspag-rest/commit/3459629304482ba53cd554acb9b5539326f53e4a"}]}, {"sha"=>"3459629304482ba53cd554acb9b5539326f53e4a", "node_id"=>"MDY6Q29tbWl0MzgwNTk3NDA6MzQ1OTYyOTMwNDQ4MmJhNTNjZDU1NGFjYjliNTUzOTMyNmY1M2U0YQ==", "commit"=>{"author"=>{"name"=>"André Rodrigues", "email"=>"a.andremr@gmail.com", "date"=>"2017-09-14T14:57:17Z"}, "committer"=>{"name"=>"Daniel Coca", "email"=>"daniel.coca@youse.com.br", "date"=>"2017-09-14T14:57:17Z"}, "message"=>"Map refund attributes of a sale (#21)\n\n* Map refunds\r\n\r\n* Reload attributes after cancel a sale\r\n\r\n* step up version and add docs on readme.md\r\n\r\n* add tests for refund model", "tree"=>{"sha"=>"1c00c6f9f9672c84f142a7365e7a57dae01d697e", "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/git/trees/1c00c6f9f9672c84f142a7365e7a57dae01d697e"}, "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/git/commits/3459629304482ba53cd554acb9b5539326f53e4a", "comment_count"=>0, "verification"=>{"verified"=>false, "reason"=>"unsigned", "signature"=>nil, "payload"=>nil}}, "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/3459629304482ba53cd554acb9b5539326f53e4a", "html_url"=>"https://github.com/Dinda-com-br/braspag-rest/commit/3459629304482ba53cd554acb9b5539326f53e4a", "comments_url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/3459629304482ba53cd554acb9b5539326f53e4a/comments", "author"=>{"login"=>"andre-rodrigues", "id"=>674120, "node_id"=>"MDQ6VXNlcjY3NDEyMA==", "avatar_url"=>"https://avatars0.githubusercontent.com/u/674120?v=4", "gravatar_id"=>"", "url"=>"https://api.github.com/users/andre-rodrigues", "html_url"=>"https://github.com/andre-rodrigues", "followers_url"=>"https://api.github.com/users/andre-rodrigues/followers", "following_url"=>"https://api.github.com/users/andre-rodrigues/following{/other_user}", "gists_url"=>"https://api.github.com/users/andre-rodrigues/gists{/gist_id}", "starred_url"=>"https://api.github.com/users/andre-rodrigues/starred{/owner}{/repo}", "subscriptions_url"=>"https://api.github.com/users/andre-rodrigues/subscriptions", "organizations_url"=>"https://api.github.com/users/andre-rodrigues/orgs", "repos_url"=>"https://api.github.com/users/andre-rodrigues/repos", "events_url"=>"https://api.github.com/users/andre-rodrigues/events{/privacy}", "received_events_url"=>"https://api.github.com/users/andre-rodrigues/received_events", "type"=>"User", "site_admin"=>false}, "committer"=>{"login"=>"danielcoca", "id"=>12816947, "node_id"=>"MDQ6VXNlcjEyODE2OTQ3", "avatar_url"=>"https://avatars3.githubusercontent.com/u/12816947?v=4", "gravatar_id"=>"", "url"=>"https://api.github.com/users/danielcoca", "html_url"=>"https://github.com/danielcoca", "followers_url"=>"https://api.github.com/users/danielcoca/followers", "following_url"=>"https://api.github.com/users/danielcoca/following{/other_user}", "gists_url"=>"https://api.github.com/users/danielcoca/gists{/gist_id}", "starred_url"=>"https://api.github.com/users/danielcoca/starred{/owner}{/repo}", "subscriptions_url"=>"https://api.github.com/users/danielcoca/subscriptions", "organizations_url"=>"https://api.github.com/users/danielcoca/orgs", "repos_url"=>"https://api.github.com/users/danielcoca/repos", "events_url"=>"https://api.github.com/users/danielcoca/events{/privacy}", "received_events_url"=>"https://api.github.com/users/danielcoca/received_events", "type"=>"User", "site_admin"=>false}, "parents"=>[{"sha"=>"a7b389bb2bae693024b7d9f04136a7be2f014293", "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/a7b389bb2bae693024b7d9f04136a7be2f014293", "html_url"=>"https://github.com/Dinda-com-br/braspag-rest/commit/a7b389bb2bae693024b7d9f04136a7be2f014293"}]}, {"sha"=>"a7b389bb2bae693024b7d9f04136a7be2f014293", "node_id"=>"MDY6Q29tbWl0MzgwNTk3NDA6YTdiMzg5YmIyYmFlNjkzMDI0YjdkOWYwNDEzNmE3YmUyZjAxNDI5Mw==", "commit"=>{"author"=>{"name"=>"Denis Tierno", "email"=>"denisantoniazzi@icloud.com", "date"=>"2017-09-14T14:55:45Z"}, "committer"=>{"name"=>"Daniel Coca", "email"=>"daniel.coca@youse.com.br", "date"=>"2017-09-14T14:55:45Z"}, "message"=>"Add BoletoNumber property (#20)", "tree"=>{"sha"=>"11c30a0c0e55d891a8234eb738eda6830268498d", "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/git/trees/11c30a0c0e55d891a8234eb738eda6830268498d"}, "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/git/commits/a7b389bb2bae693024b7d9f04136a7be2f014293", "comment_count"=>0, "verification"=>{"verified"=>false, "reason"=>"unsigned", "signature"=>nil, "payload"=>nil}}, "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/a7b389bb2bae693024b7d9f04136a7be2f014293", "html_url"=>"https://github.com/Dinda-com-br/braspag-rest/commit/a7b389bb2bae693024b7d9f04136a7be2f014293", "comments_url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/a7b389bb2bae693024b7d9f04136a7be2f014293/comments", "author"=>{"login"=>"detierno", "id"=>65082, "node_id"=>"MDQ6VXNlcjY1MDgy", "avatar_url"=>"https://avatars1.githubusercontent.com/u/65082?v=4", "gravatar_id"=>"", "url"=>"https://api.github.com/users/detierno", "html_url"=>"https://github.com/detierno", "followers_url"=>"https://api.github.com/users/detierno/followers", "following_url"=>"https://api.github.com/users/detierno/following{/other_user}", "gists_url"=>"https://api.github.com/users/detierno/gists{/gist_id}", "starred_url"=>"https://api.github.com/users/detierno/starred{/owner}{/repo}", "subscriptions_url"=>"https://api.github.com/users/detierno/subscriptions", "organizations_url"=>"https://api.github.com/users/detierno/orgs", "repos_url"=>"https://api.github.com/users/detierno/repos", "events_url"=>"https://api.github.com/users/detierno/events{/privacy}", "received_events_url"=>"https://api.github.com/users/detierno/received_events", "type"=>"User", "site_admin"=>false}, "committer"=>{"login"=>"danielcoca", "id"=>12816947, "node_id"=>"MDQ6VXNlcjEyODE2OTQ3", "avatar_url"=>"https://avatars3.githubusercontent.com/u/12816947?v=4", "gravatar_id"=>"", "url"=>"https://api.github.com/users/danielcoca", "html_url"=>"https://github.com/danielcoca", "followers_url"=>"https://api.github.com/users/danielcoca/followers", "following_url"=>"https://api.github.com/users/danielcoca/following{/other_user}", "gists_url"=>"https://api.github.com/users/danielcoca/gists{/gist_id}", "starred_url"=>"https://api.github.com/users/danielcoca/starred{/owner}{/repo}", "subscriptions_url"=>"https://api.github.com/users/danielcoca/subscriptions", "organizations_url"=>"https://api.github.com/users/danielcoca/orgs", "repos_url"=>"https://api.github.com/users/danielcoca/repos", "events_url"=>"https://api.github.com/users/danielcoca/events{/privacy}", "received_events_url"=>"https://api.github.com/users/danielcoca/received_events", "type"=>"User", "site_admin"=>false}, "parents"=>[{"sha"=>"844be9624b4cf0bda2842ca50acab59a2fcca8a3", "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/844be9624b4cf0bda2842ca50acab59a2fcca8a3", "html_url"=>"https://github.com/Dinda-com-br/braspag-rest/commit/844be9624b4cf0bda2842ca50acab59a2fcca8a3"}]}, {"sha"=>"844be9624b4cf0bda2842ca50acab59a2fcca8a3", "node_id"=>"MDY6Q29tbWl0MzgwNTk3NDA6ODQ0YmU5NjI0YjRjZjBiZGEyODQyY2E1MGFjYWI1OWEyZmNjYThhMw==", "commit"=>{"author"=>{"name"=>"Daniel Coca", "email"=>"daniel.coca@youse.com.br", "date"=>"2017-02-06T11:29:54Z"}, "committer"=>{"name"=>"Daniel Coca", "email"=>"daniel.coca@youse.com.br", "date"=>"2017-02-06T11:29:54Z"}, "message"=>"Release 0.5.2 - Fix bug when no result is found (find by merchant order id)", "tree"=>{"sha"=>"8f2f2d008ab2cf1824bad89c4734aefaed94d36f", "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/git/trees/8f2f2d008ab2cf1824bad89c4734aefaed94d36f"}, "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/git/commits/844be9624b4cf0bda2842ca50acab59a2fcca8a3", "comment_count"=>0, "verification"=>{"verified"=>false, "reason"=>"unsigned", "signature"=>nil, "payload"=>nil}}, "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/844be9624b4cf0bda2842ca50acab59a2fcca8a3", "html_url"=>"https://github.com/Dinda-com-br/braspag-rest/commit/844be9624b4cf0bda2842ca50acab59a2fcca8a3", "comments_url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/844be9624b4cf0bda2842ca50acab59a2fcca8a3/comments", "author"=>{"login"=>"danielcoca", "id"=>12816947, "node_id"=>"MDQ6VXNlcjEyODE2OTQ3", "avatar_url"=>"https://avatars3.githubusercontent.com/u/12816947?v=4", "gravatar_id"=>"", "url"=>"https://api.github.com/users/danielcoca", "html_url"=>"https://github.com/danielcoca", "followers_url"=>"https://api.github.com/users/danielcoca/followers", "following_url"=>"https://api.github.com/users/danielcoca/following{/other_user}", "gists_url"=>"https://api.github.com/users/danielcoca/gists{/gist_id}", "starred_url"=>"https://api.github.com/users/danielcoca/starred{/owner}{/repo}", "subscriptions_url"=>"https://api.github.com/users/danielcoca/subscriptions", "organizations_url"=>"https://api.github.com/users/danielcoca/orgs", "repos_url"=>"https://api.github.com/users/danielcoca/repos", "events_url"=>"https://api.github.com/users/danielcoca/events{/privacy}", "received_events_url"=>"https://api.github.com/users/danielcoca/received_events", "type"=>"User", "site_admin"=>false}, "committer"=>{"login"=>"danielcoca", "id"=>12816947, "node_id"=>"MDQ6VXNlcjEyODE2OTQ3", "avatar_url"=>"https://avatars3.githubusercontent.com/u/12816947?v=4", "gravatar_id"=>"", "url"=>"https://api.github.com/users/danielcoca", "html_url"=>"https://github.com/danielcoca", "followers_url"=>"https://api.github.com/users/danielcoca/followers", "following_url"=>"https://api.github.com/users/danielcoca/following{/other_user}", "gists_url"=>"https://api.github.com/users/danielcoca/gists{/gist_id}", "starred_url"=>"https://api.github.com/users/danielcoca/starred{/owner}{/repo}", "subscriptions_url"=>"https://api.github.com/users/danielcoca/subscriptions", "organizations_url"=>"https://api.github.com/users/danielcoca/orgs", "repos_url"=>"https://api.github.com/users/danielcoca/repos", "events_url"=>"https://api.github.com/users/danielcoca/events{/privacy}", "received_events_url"=>"https://api.github.com/users/danielcoca/received_events", "type"=>"User", "site_admin"=>false}, "parents"=>[{"sha"=>"b89ef2c766123859366ffc415750ea9f91ff6b0f", "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/b89ef2c766123859366ffc415750ea9f91ff6b0f", "html_url"=>"https://github.com/Dinda-com-br/braspag-rest/commit/b89ef2c766123859366ffc415750ea9f91ff6b0f"}]}, {"sha"=>"b89ef2c766123859366ffc415750ea9f91ff6b0f", "node_id"=>"MDY6Q29tbWl0MzgwNTk3NDA6Yjg5ZWYyYzc2NjEyMzg1OTM2NmZmYzQxNTc1MGVhOWY5MWZmNmIwZg==", "commit"=>{"author"=>{"name"=>"André Rodrigues", "email"=>"a.andremr@gmail.com", "date"=>"2017-02-06T11:27:32Z"}, "committer"=>{"name"=>"Daniel Coca", "email"=>"daniel.coca@youse.com.br", "date"=>"2017-02-06T11:27:32Z"}, "message"=>"Fix bug when no result is found (#19)\n\n* :bug: Fix bug when no result is found for a merchant order id\r\n\r\n* Update README.md", "tree"=>{"sha"=>"ba023b57228ab4d01e2dfe452b715b6f97f7c7a3", "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/git/trees/ba023b57228ab4d01e2dfe452b715b6f97f7c7a3"}, "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/git/commits/b89ef2c766123859366ffc415750ea9f91ff6b0f", "comment_count"=>0, "verification"=>{"verified"=>false, "reason"=>"unsigned", "signature"=>nil, "payload"=>nil}}, "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/b89ef2c766123859366ffc415750ea9f91ff6b0f", "html_url"=>"https://github.com/Dinda-com-br/braspag-rest/commit/b89ef2c766123859366ffc415750ea9f91ff6b0f", "comments_url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/b89ef2c766123859366ffc415750ea9f91ff6b0f/comments", "author"=>{"login"=>"andre-rodrigues", "id"=>674120, "node_id"=>"MDQ6VXNlcjY3NDEyMA==", "avatar_url"=>"https://avatars0.githubusercontent.com/u/674120?v=4", "gravatar_id"=>"", "url"=>"https://api.github.com/users/andre-rodrigues", "html_url"=>"https://github.com/andre-rodrigues", "followers_url"=>"https://api.github.com/users/andre-rodrigues/followers", "following_url"=>"https://api.github.com/users/andre-rodrigues/following{/other_user}", "gists_url"=>"https://api.github.com/users/andre-rodrigues/gists{/gist_id}", "starred_url"=>"https://api.github.com/users/andre-rodrigues/starred{/owner}{/repo}", "subscriptions_url"=>"https://api.github.com/users/andre-rodrigues/subscriptions", "organizations_url"=>"https://api.github.com/users/andre-rodrigues/orgs", "repos_url"=>"https://api.github.com/users/andre-rodrigues/repos", "events_url"=>"https://api.github.com/users/andre-rodrigues/events{/privacy}", "received_events_url"=>"https://api.github.com/users/andre-rodrigues/received_events", "type"=>"User", "site_admin"=>false}, "committer"=>{"login"=>"danielcoca", "id"=>12816947, "node_id"=>"MDQ6VXNlcjEyODE2OTQ3", "avatar_url"=>"https://avatars3.githubusercontent.com/u/12816947?v=4", "gravatar_id"=>"", "url"=>"https://api.github.com/users/danielcoca", "html_url"=>"https://github.com/danielcoca", "followers_url"=>"https://api.github.com/users/danielcoca/followers", "following_url"=>"https://api.github.com/users/danielcoca/following{/other_user}", "gists_url"=>"https://api.github.com/users/danielcoca/gists{/gist_id}", "starred_url"=>"https://api.github.com/users/danielcoca/starred{/owner}{/repo}", "subscriptions_url"=>"https://api.github.com/users/danielcoca/subscriptions", "organizations_url"=>"https://api.github.com/users/danielcoca/orgs", "repos_url"=>"https://api.github.com/users/danielcoca/repos", "events_url"=>"https://api.github.com/users/danielcoca/events{/privacy}", "received_events_url"=>"https://api.github.com/users/danielcoca/received_events", "type"=>"User", "site_admin"=>false}, "parents"=>[{"sha"=>"2e6ee99daadf943b800fbde2c344478982dad96d", "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/2e6ee99daadf943b800fbde2c344478982dad96d", "html_url"=>"https://github.com/Dinda-com-br/braspag-rest/commit/2e6ee99daadf943b800fbde2c344478982dad96d"}]}, {"sha"=>"2e6ee99daadf943b800fbde2c344478982dad96d", "node_id"=>"MDY6Q29tbWl0MzgwNTk3NDA6MmU2ZWU5OWRhYWRmOTQzYjgwMGZiZGUyYzM0NDQ3ODk4MmRhZDk2ZA==", "commit"=>{"author"=>{"name"=>"Daniel Coca", "email"=>"daniel.coca@youse.com.br", "date"=>"2017-01-18T16:38:56Z"}, "committer"=>{"name"=>"Daniel Coca", "email"=>"daniel.coca@youse.com.br", "date"=>"2017-01-18T16:38:56Z"}, "message"=>"Release 0.5.1 (Find payments by merchant order id).", "tree"=>{"sha"=>"93fbe2da3c950dbd354df866db8be6f25b426c22", "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/git/trees/93fbe2da3c950dbd354df866db8be6f25b426c22"}, "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/git/commits/2e6ee99daadf943b800fbde2c344478982dad96d", "comment_count"=>0, "verification"=>{"verified"=>false, "reason"=>"unsigned", "signature"=>nil, "payload"=>nil}}, "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/2e6ee99daadf943b800fbde2c344478982dad96d", "html_url"=>"https://github.com/Dinda-com-br/braspag-rest/commit/2e6ee99daadf943b800fbde2c344478982dad96d", "comments_url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/2e6ee99daadf943b800fbde2c344478982dad96d/comments", "author"=>{"login"=>"danielcoca", "id"=>12816947, "node_id"=>"MDQ6VXNlcjEyODE2OTQ3", "avatar_url"=>"https://avatars3.githubusercontent.com/u/12816947?v=4", "gravatar_id"=>"", "url"=>"https://api.github.com/users/danielcoca", "html_url"=>"https://github.com/danielcoca", "followers_url"=>"https://api.github.com/users/danielcoca/followers", "following_url"=>"https://api.github.com/users/danielcoca/following{/other_user}", "gists_url"=>"https://api.github.com/users/danielcoca/gists{/gist_id}", "starred_url"=>"https://api.github.com/users/danielcoca/starred{/owner}{/repo}", "subscriptions_url"=>"https://api.github.com/users/danielcoca/subscriptions", "organizations_url"=>"https://api.github.com/users/danielcoca/orgs", "repos_url"=>"https://api.github.com/users/danielcoca/repos", "events_url"=>"https://api.github.com/users/danielcoca/events{/privacy}", "received_events_url"=>"https://api.github.com/users/danielcoca/received_events", "type"=>"User", "site_admin"=>false}, "committer"=>{"login"=>"danielcoca", "id"=>12816947, "node_id"=>"MDQ6VXNlcjEyODE2OTQ3", "avatar_url"=>"https://avatars3.githubusercontent.com/u/12816947?v=4", "gravatar_id"=>"", "url"=>"https://api.github.com/users/danielcoca", "html_url"=>"https://github.com/danielcoca", "followers_url"=>"https://api.github.com/users/danielcoca/followers", "following_url"=>"https://api.github.com/users/danielcoca/following{/other_user}", "gists_url"=>"https://api.github.com/users/danielcoca/gists{/gist_id}", "starred_url"=>"https://api.github.com/users/danielcoca/starred{/owner}{/repo}", "subscriptions_url"=>"https://api.github.com/users/danielcoca/subscriptions", "organizations_url"=>"https://api.github.com/users/danielcoca/orgs", "repos_url"=>"https://api.github.com/users/danielcoca/repos", "events_url"=>"https://api.github.com/users/danielcoca/events{/privacy}", "received_events_url"=>"https://api.github.com/users/danielcoca/received_events", "type"=>"User", "site_admin"=>false}, "parents"=>[{"sha"=>"c1ce37d1eae727ef55f357b67fb730195db1c56a", "url"=>"https://api.github.com/repos/Dinda-com-br/braspag-rest/commits/c1ce37d1eae727ef55f357b67fb730195db1c56a", "html_url"=>"https://github.com/Dinda-com-br/braspag-rest/commit/c1ce37d1eae727ef55f357b67fb730195db1c56a"}]}]
      end

      # describe self.parse
      # context 'when standard use'
      def test_standard_use
        parsed = Parser.parse(commits_stub)

        assert_equal(4, parsed.size )
        parsed.values.each do |commit_per_author|
          assert_equal(true, commit_per_author.key?(:name) )
          assert_equal(true, commit_per_author.key?(:email) )
          assert_equal(true, commit_per_author.key?(:login) )
          assert_equal(true, commit_per_author.key?(:commits_count) )
        end
      end

      # context 'when nil'
      def test_nil
        assert_raise NoMethodError do
          parsed = Parser.parse(nil)
        end
      end
    end
  end
end
