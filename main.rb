# Class: Player
# Initializes player with name and starting life total
# Asks the question to the other player
# Will recieve information to change life total on false answer

# Class: Question 
# Will generate two random numbers and formulate a math question
# Will accept answer from terminal and check if answer is correct

# Class: Game
# Will manage the state of the game, create player instances & adjust player lives based on information from question classes.
# Outputs updated scores at the end of each turn, plus the game over message at the end


require './game.rb'
require './player.rb'
require './question.rb'

game = Game.new
game.start_game