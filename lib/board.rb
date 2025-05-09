class Board
  def draw_board

    board_array = [[" 1", " 2", " 3"], [" 4", " 5", " 6"], [" 7", " 8", " 9"]]
  
    board_array.each_with_index do |row, index|
      if index == 1 || index == 2
        puts "_____________"
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