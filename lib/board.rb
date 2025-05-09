class Board
  def initialize
    @board = [[" ", " ", " "], [" ", " ", " "], [" ", " ", " "]]
  end

  def draw_board
    @board.each_with_index do |row, index|
      if index > 0
        puts "-----------"
      end
      row.each_with_index do |cell, index_2|
        if index_2 == 2
          print cell
        else
          print cell + " | "
        end
      end
      puts 
    end
  end
end

new_board = Board.new

new_board.draw_board