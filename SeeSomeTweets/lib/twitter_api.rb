class TwitterApi
def self.search somthing
  client.search(somthing, result_type: "recent").take(10)
end


  def self.our_public_tweets
    client.user_timeline('NASA',count:10)
  end
  def self.client
    @client ||= Twitter::REST::Client.new do |config|
  config.consumer_key        = "NJ99TVxsR1KIIGNAD67MATSjF"
  config.consumer_secret     = "eC4Q2pFsOx14t82ythndnNf2554n3MfOZwrOp3pTVh6E1LbqgP"
  # config.access_token        = "YOUR_ACCESS_TOKEN"
  # config.access_token_secret = "YOUR_ACCESS_SECRET"
end
  end
end
