require 'sidekiq/api'

class TwitterAccountChecker
  include Sidekiq::Worker

  def perform
    TwitterAccount.pluck(:id).each do |twitter_account_id|
      TweetFetcher.perform_async(twitter_account_id)
    end if Sidekiq::Queue.new.size < 100
  end
end