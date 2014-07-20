namespace :tw_server do
  desc "Run TwServer"
  task run: :environment do
    TwServer.new(TwitterAccount.pluck(:twitter_user_id)).run
  end
end
