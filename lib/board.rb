def draw_board
  board_array = [["x1", "x2", "x3"], ["y1", "y2", "y3"], ["z1", "z2", "z3"]]

  board_array.each do |row|
    row.each_with_index do |cell, index|
      if index == 2
        print cell
      else
        print cell + " |"
      end
    end
    puts 
    
  end
end

draw_board()