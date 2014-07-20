class Ts
	def self.client
		TweetStream.configure do |config|
			config.consumer_key       = 'OTTPxUMDPc2kyXbTZ7fUEB85A'
			config.consumer_secret    = 'ekfN2Z4Ll43jDBdQffkDSTiPIhdDiPk80vGvooq1zJwGeTWula'
			config.oauth_token        = '266200338-UHwokfGYPxOs5qzzKCDAEEU2txU7LZJQXXlJqXD0'
			config.oauth_token_secret = 'PjYukBkXb5vcmchyj0VdYLvwFL1zevnSz9IiigDsswsTW'
			config.auth_method        = :oauth
		end
		@ts_client ||= TweetStream::Client.new
	end
end