# this class will generate our secret number for us
class SecretNumber 
	attr_accessor :stored_random

	def initialize
	end

	def random
		@stored_random =rand(10) + 1
	end

end
