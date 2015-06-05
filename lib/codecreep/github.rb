require 'httparty'
require 'pry'
module Codecreep
  class Github
    include HTTParty
    base_uri 'https://api.github.com'
    basic_auth ENV['GH_USER'], ENV['GH_PASS']

    # Your users are: ["alphaho", "datagrok", "birk5437", "englishm",
    # "tylerjones1223", "agam", "jbcrail", "wtiger", "oldalak", "longlene"]
    def list_users(user_id)
        self.class.get("/users/#{user_id}")
    end

    def users_following(following)
        self.class.get("/user/#{following}")

    end

    def users_followers(followers)
        self.class.get("/user/#{followers}")
    end

  end
end
binding.pry