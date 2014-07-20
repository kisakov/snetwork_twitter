class TwServer
	def initialize(accounts)
		@accounts, @logger = accounts, LoggerHelper.new("tw_server")
		@logger.both "TwServer initiated"
	end

	def run
		@logger.both "Running TweetStream client instance for #{@accounts.size} accounts"
		Ts.client.follow(*@accounts) do |status|
		  receive_status(status)
		end
	end

private

	def receive_status(status)
		@logger.file "========================"
		@logger.both "Adding tweet to db from user_id: #{status.user.id}"
		@logger.out "#{status.text}"

		@logger.both "Tweet added"
		@logger.file "========================"
	end
end