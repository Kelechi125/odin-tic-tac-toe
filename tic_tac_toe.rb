require_relative 'lib/board'
require_relative 'lib/player'

puts "Player 1, please enter your name."
name = gets.chomp
player_one = Player.new(name)


def select_symbol
  puts "Player 1, please select a symbol: X or O."
  return gets.chomp.upcase
end

symbol = select_symbol()

# This method is to help assign a symbol to the players
def assign_symbol(symbol)

# Until loop repeatedly prompts Player_One to pick their symbol selection
# until they put a valid selection of "X" or "O"
  until symbol == "X" || symbol == "O" do
    symbol = select_symbol()
  end
# Conditional check helps figure out symbol assignment
  if symbol == "X"
    return "X", "O"
  elsif symbol == "O"
    return "O", "X"
  end
end

# assign_symbol returns an array from which I can pick out and assign symbols
official_symbols = assign_symbol(symbol)

symbol_one = official_symbols[0] #Player_One's symbol
symbol_two = official_symbols[1] # Player_Two's symbol

puts "Player 2, please enter your name."
name_two = gets.chomp
player_two = Player.new(name_two)


puts "Hello #{player_one.name} and #{player_two.name}!"

# This line explicitly declares which player is assigned to "X" and "O"
puts "#{player_one.name} is #{symbol_one}, and #{player_two.name} is #{symbol_two}."
puts "Let's start the game!"

Board.new.draw_board

# Need to figure out how to get the players to take turns
# Maybe during each player's turn when they select a space, the update_board method
# From the Board class get called
# Each player has to select a number that indicates an empty space on the board
# Program might need to count the number of each symbol present
# to determine whose turn it is currently
# e.g If Player_One is "X" and Player_Two is "O",
# If there's more "X's" than "O's" at any point,
# it's Player_Two's turn. Otherwise if the amount
# of "X's" and "O's" are equal, it's Player_One's turn
# Could make a method within the Board class that
# loops through the @board after every turn to count
# each symbol and then invoke the funciton call within
# the update_board method at the very end

# Need to figure out how to determine the winner
# Winning conditions need to be checked after every single turn

turn = 0

while turn < 9 do

  puts "Player 1's turn"
  Board.update_board()

  puts "Player 2's turn"
  Board.update_board()

  turn += 1
end