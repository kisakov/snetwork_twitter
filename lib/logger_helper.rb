class LoggerHelper
	def initialize(name)
		@log_to_file = Logger.new("#{Rails.root}/log/#{name}.log")
		@log_to_file.formatter = Logger::Formatter.new
		@log_to_console = Logger.new(STDOUT)
	end

	def file(msg)
		@log_to_file.debug(msg)
	end

	def out(msg)
		@log_to_console.debug(msg)
	end

	def both(msg)
		@log_to_file.debug(msg)
		@log_to_console.debug(msg)
	end
end