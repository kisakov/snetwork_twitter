class TwitterAccount < ActiveRecord::Base
  has_many :tweets

  def fetch_tweets
    last_tweet_id = tweets.maximum(:twitter_id).first
    Tw.client.user_timeline(twitter_user_id, count: 200, exclude_replies: true, since_id: last_tweet_id)
  end

  def self.create_account(user_name)
    user = Tw.client.user(user_name)
    TwitterAccount.find_or_create_by(name: user.name) do |account|
      account.screen_name       = user.screen_name
      account.description       = user.description
      account.profile_image_url = user.profile_image_url.to_s
      account.followers_count   = user.followers_count
      account.friends_count     = user.friends_count
      account.statuses_count    = user.statuses_count
      account.twitter_user_id   = user.id
      account.url               = user.url.to_s
    end
  end
end
