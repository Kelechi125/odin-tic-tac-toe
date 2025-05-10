# Want the program to ask the players for their names

class Player
  attr_accessor :name

  def initialize(name)
    self.name = name
  end
end

puts "Player 1, please enter your name."
name = gets.chomp
player_one = Player.new(name)

puts "Player 2, please enter your name."
name_two = gets.chomp
player_two = Player.new(name_two)

puts "Hello #{player_one.name} and #{player_two.name}! Let's start the game!"
