class TwitterAccount < ActiveRecord::Base
  has_many :tweets

  validates_uniqueness_of :name

  def to_s; name end

  def fetch_tweets
    options = {count: 200, exclude_replies: true}
    if last_tweet_id = tweets.maximum(:twitter_id)
      options.merge!(since_id: last_tweet_id)
    end
    Tweet.fetch_statuses(Tw.client.user_timeline(twitter_user_id, options))
  end

  def self.create_account(user_name)
    user = Tw.client.user(user_name)
    TwitterAccount.find_or_create_by(screen_name: user_name) do |account|
      account.name              = user.name
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
