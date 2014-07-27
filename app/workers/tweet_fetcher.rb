class TweetFetcher
  include Sidekiq::Worker

  def perform(twitter_account_id)
    TwitterAccount.find(twitter_account_id).fetch_tweets
  end
end