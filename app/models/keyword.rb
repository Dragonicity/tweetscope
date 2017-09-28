class Keyword < ApplicationRecord

  def grab_tweets
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "I6ujrVH2pyYDD9DcL2pik65Sh"
      config.consumer_secret     = "WenT1lRXyw7AGU2ERXWmxbvDRwLa7irvpSOV8lYVKrw3nj8d9o"
      config.access_token        = "1274583877-EArLKTY687X13XwKjcQTzYhhBKjxpAEi66mwjGK"
      config.access_token_secret = "UDX3YxDGL7HIqcylgK7oTalf7dLyaOqLTYBdOhXtoKJrU"
    end

    client.search(self.word, :result_type => "recent").take(3).collect do |tweet|
      "#{tweet.user.screen_name}: #{tweet.text}"
    end

  end

end
