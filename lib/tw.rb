class Tw
	def self.client
		@tw_client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = 'OTTPxUMDPc2kyXbTZ7fUEB85A'
      config.consumer_secret     = 'ekfN2Z4Ll43jDBdQffkDSTiPIhdDiPk80vGvooq1zJwGeTWula'
      config.access_token        = '266200338-UHwokfGYPxOs5qzzKCDAEEU2txU7LZJQXXlJqXD0'
      config.access_token_secret = 'PjYukBkXb5vcmchyj0VdYLvwFL1zevnSz9IiigDsswsTW'
		end
	end
end