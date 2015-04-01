# this class will likely be simple, keeping track of the user's name.
class Player
	def initialize
	end

	def name
	puts "Whats your name, player?"
	@player = gets.chomp
	sleep 0.75
	puts "Hello " +@player
	sleep 0.75
	end

end
