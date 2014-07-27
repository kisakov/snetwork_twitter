class PagesController < ApplicationController
  def index
    @twitter_account  = TwitterAccount.new
    @twitter_accounts = TwitterAccount.all
  end

  def tweets
    @twitter_account = TwitterAccount.find_by(screen_name: params[:name])
    @tweets          = @twitter_account.tweets.order(twitter_id: :desc)
  end

  def add_account
    twitter_account = TwitterAccount.create_account(params[:twitter_account][:name])
    TweetFetcher.perform_async(twitter_account.id)
    redirect_to root_path
  end
end
