def draw_board
  board_array = [["x1", "x2", "x3"], ["y1", "y2", "y3"], ["z1", "z2", "z3"]]

  board_array.each do |row|
    row.each do |cell|
      puts cell
    end
    
    puts "--"
    
  end
end

draw_board()