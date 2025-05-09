class Board
  attr_reader :board

  def initialize
    @board = [[" ", " ", " "], [" ", " ", " "], [" ", " ", " "]]
  end

  def draw_board
    counter = 1
    @board.each_with_index do |row, row_index|
      if row_index > 0
        puts "-----------"
      end
      row.each_with_index do |cell, col_index|
        display = cell == " " ? " #{counter}" : " #{cell}"
        if col_index == 2
          print display
        else
          print display + " |"
        end
        counter += 1
      end
      puts 
    end
  end

  def update_board(position, symbol)
    puts "Please select a position number between 1 - 9."

    row_index = (position - 1) / 3
    col_index = (position - 1) % 3
    @board[row_index][col_index] = symbol
  end
end

new_board = Board.new

new_board.draw_board