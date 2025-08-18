require_relative 'lib/board'
require_relative 'lib/player'

puts "Player 1, please enter your name."
name = gets.chomp
player_one = Player.new(name)

#Player 1 will select their symbol
#Function will automatically assign Player 2's symbol
#based on Player 1's selection

def select_symbol
  puts "Player 1, please select a symbol: X or O."
  return gets.chomp.upcase
end

symbol = select_symbol()

def assign_symbol(symbol)

  until symbol == "X" || symbol == "O" do
    symbol = select_symbol()
  end

  if symbol == "X"
    return ["X", "O"]
  elsif symbol == "O"
    return ["O", "X"]
  end
end

official_symbols = assign_symbol(symbol)
# puts symbol


# I need to figure out how to handle when Player 1 puts anything other
# than "X" or "O" as their symbol. I want the select_symbol method
# to run itself over and over if anything other than these are typed
# and for the method to stop if "X" or "O" are properly selected
# (which would be the case most of the time)

puts "Player 2, please enter your name."
name_two = gets.chomp
player_two = Player.new(name_two)


puts "Hello #{player_one.name} and #{player_two.name}!"
puts "#{player_one.name} is #{official_symbols[0]}, and #{player_two.name} is #{official_symbols[1]}."
puts "Let's start the game!"

Board.new.draw_board

# Need to figure out how to get the players to take turns
# Need to figure out how to determine the winner
# Maybe during each player's turn when they select a space, the update_board method
# From the Board class get called
# Each player has to select a number that indicates an empty space on the board
# 