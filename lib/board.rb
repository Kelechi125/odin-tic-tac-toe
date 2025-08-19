class Board
  attr_reader :board

  def initialize
    #Empty board is created when Board object is instantiated
    @board = [[" ", " ", " "], [" ", " ", " "], [" ", " ", " "]]
    @winning_conditions = [[@board[0][0], @board[0][1], @board[0][2]], [@board[1][0], @board[1][1], @board[1][2]], 
    [@board[2][0], @board[2][1], @board[2][2]], [@board[0][0], @board[1][0], @board[2][0]], [@board[0][1], @board[1][1], @board[2][1]],
   [@board[0][2], @board[1][2], @board[2][2]], [@board[0][0], @board[1][1], @board[2][2]], [@board[0][2], @board[1][1], @board[2][0]]]
  end

    #Method draws the physical board out in the terminal
  def draw_board
    counter = 1
    #Creates the first cell for each row
    @board.each_with_index do |row, row_index|
      if row_index > 0
        puts "-----------"
      end
      #Creates the remaining cells for each row
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

  #The position parameter is the number in each cell chosen by a player
  #The symbol parameter is the player's symbol, either "X" or "O"
  def update_board(position, symbol)
    puts "Please select a position number between 1 - 9."

    #Arrays are zero-indexed, so we have to subtract 1 to get the actual array index
    #Dividing by the integer 3 since integer division discards any remainder and gives us the whole number
    row_index = (position - 1) / 3

    #Arrays are zero-indexed, so we have to subtract 1 to get the actual array index
    #Using the modulo gives us the remainder when (position - 1) is divided by 3
    #Helps us determine the column index within the row
    col_index = (position - 1) % 3

    #Using the calculated row index and column index to access the specific element
    #within the @board array
    #We assign the player's symbol to this position
    @board[row_index][col_index] = symbol
  end

  def check_win_conditions
    # There are 8 potential winning conditions
    # Maybe create an array of the winning positions
    # represented by the positions from the board
  end
end

# new_board = Board.new

# new_board.draw_board