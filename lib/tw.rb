class Tw
	def self.client
		@tw_client ||= Twitter::REST::Client.new do |config|
			config.consumer_key    = 'OTTPxUMDPc2kyXbTZ7fUEB85A'
			config.consumer_secret = 'ekfN2Z4Ll43jDBdQffkDSTiPIhdDiPk80vGvooq1zJwGeTWula'
		end
	end
end