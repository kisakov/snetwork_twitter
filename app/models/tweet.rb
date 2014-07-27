class Tweet < ActiveRecord::Base
  belongs_to :twitter_account

  validates_uniqueness_of :twitter_id

  def self.add(status)
    account = TwitterAccount.find_by(twitter_user_id: status.user.id)
    account.tweets.create(
      text: status.text,
      profile_image_url: status.user.profile_image_url.to_s,
      twitter_id: status.id,
      raw_twitt: status.to_h.to_s,
      retweet_count: status.retweet_count,
      created_at: status.created_at,
      from_user: status.user.screen_name
    )
  end
end
