class Board
  def draw_board

    board_array = [["x1", "x2", "x3"], ["y1", "y2", "y3"], ["z1", "z2", "z3"]]
  
    board_array.each_with_index do |row, index|
      if index == 1 || index == 2
        puts "_______________"
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