require 'rails_helper'

RSpec.describe TwitterAccount, type: :model do
  subject { TwitterAccount.create_account('dhh') }

  it '.create_account', :vcr do
    expect(subject.name).to eq 'DHH'
    expect(subject.screen_name).to eq 'dhh'
    expect(TwitterAccount.all.size).to eq 1
  end

  it '#fetch_tweets', :vcr do
    subject.fetch_tweets
    expect(subject.tweets.count).to be > 0
  end
end