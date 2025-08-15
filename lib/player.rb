# Want the program to ask the players for their names
# Each player should have the ability to select a spot on the board


class Player
  attr_accessor :name

  def initialize(name)
    self.name = name
  end
end

puts "Player 1, please enter your name."
name = gets.chomp
player_one = Player.new(name)

#Player 1 will select their symbol
#Function will automatically assign Player 2's symbol
#based on Player 1's selection
def select_symbol()
  letter = gets.chomp

  if letter == "X" || "x"
    symbol_one = "X"
    symbol_two = "O"
  elsif letter == "O" || "o"
    symbol_one = "O"
    symbol_two = "X"
  end

  #symbol_one is Player 1's symbol
  #symbol_two is Player 2's symbol
  return symbol_one, symbol_two
end

puts "Player 1, please select a symbol: X or O."

select_symbol()

puts "Player 2, please enter your name."
name_two = gets.chomp
player_two = Player.new(name_two)


puts "Hello #{player_one.name} and #{player_two.name}! Let's start the game!"
