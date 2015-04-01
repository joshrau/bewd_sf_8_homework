# this class may be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is cleanly structured and easy to read.

class Game
	puts "This game was created by Josh Rau"
def initialize
	
end
	# This class holds most of the game logic and should:
#   Welcome players and inform them of the game rules.
#   Initialize the Player class.
#     Initialize the Secret Number class.
#     Prompt the user to choose a number, verify if the user guessed correctly.
#     If the user guesses incorrectly let them know if they were too high or too low.
#   Monitor how many guesses the player has before the game is over.


def play

	secret_choice = SecretNumber.new
	secret_number = secret_choice.random

	player = Player.new
	player.name


	#Welcome the player to the game
puts "Welcome to the guessing a number game!"

#Let them know who created the game
puts "Do you want to play? (yes/no)"


decision = false
while decision == false
	play = gets.chomp
if play.to_s.downcase == "yes"
	puts "Awesome"
	decision = true
elsif play.to_s.downcase == "no"
	puts "please play with me... okay?"
else puts "answer yes or no please :)"
end
end



sleep 1

#Ask for the player's name and personally greet them by saying "hi Player_name!"


#Communicate the rules of the game
puts "Here are the rules of the game"
sleep 0.75
puts "I am thinking of a number between 1 and 10."
sleep 0.75
puts "You have three tries to guess the secret number."
sleep 0.75
puts "If you fail 3 times..."
sleep 0.75
puts "you lose and I win"
sleep 0.75

#for fun, ask then if they are ready to play
puts "Are you ready to play the game?"
decision = false
while decision == false
	play = gets.chomp
if play.to_s.downcase == "yes"
	puts "Awesome"
	decision = true
elsif play.to_s.downcase == "no"
	puts "please play with me... okay?"
else puts "answer yes or no please :)"
end
end

#Ask the user for their guess
#Verify if their guess is correct, if it is corrrect, congratulate them and end the game
#Let the player know how many guesses they have left
#If the player does not guess the answer in 3 tries let them know they lost and tell them the number

guessNumber = 3
while guessNumber > 0 
	puts "What do you think the secret number is?"
	guess = gets.chomp
if secret_number == guess.to_i
	puts "OMG, you won!! "+secret_number.to_s+" was totally my number!! Nice Job"
	sleep 0.5
	puts "Game Over"
	break
elsif secret_number != guess.to_i
	puts "I'm sorry, but you did not guess correctly"
	guessNumber -= 1
		if guessNumber > 1
		puts "You have "+guessNumber.to_s+" more guesses left..."
		else puts "You have "+guessNumber.to_s+" more guess left..."
		end
	end
end

if guessNumber.to_i < 1
	puts "Oh, jeez... it looks like you have lost"
	sleep 0.5
	puts "The secret number was "+secret_number.to_s
	puts "Game Over"
end	





end

end
