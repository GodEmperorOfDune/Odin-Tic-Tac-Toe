class GameBoard


  def initialize
    @board = @@EMPTY_BOARD
  end

  def print_board
    puts "     |     |     
  #{@board[:a1]}  |  #{@board[:a2]}  |  #{@board[:a3]}  
_____|_____|_____
     |     |     
  #{@board[:b1]}  |  #{@board[:b2]}  |  #{@board[:b3]}  
_____|_____|_____
     |     |     
  #{@board[:c1]}  |  #{@board[:c2]}  |  #{@board[:c3]}  
     |     |     "
  end

  def make_move(icon, coordinates)
    @board[coordinates.to_sym] = icon
  end

  def check_tie()
    if @board.values.none?(' ')
      puts "The game is a tie"
      true
    end
    false
  end

  def check_win(symbol_to_check)
    @WINNING_ARRAYS = [
      [@board[:a1], @board[:a2], @board[:a3]],
      [@board[:b1], @board[:b2], @board[:b3]],
      [@board[:c1], @board[:c2], @board[:c3]],
      [@board[:a1], @board[:b1], @board[:c1]],
      [@board[:a2], @board[:b2], @board[:c2]],
      [@board[:a3], @board[:b3], @board[:c3]],
      [@board[:a1], @board[:b2], @board[:c3]],
      [@board[:a3], @board[:b2], @board[:c1]]
    ]
    if @WINNING_ARRAYS.any?{|row| row.all?(symbol_to_check)}
      puts "Winner"
      true
    else
      puts "No Winner"
      false
    end
  end

  private
  @@EMPTY_BOARD = {
    :a1 => ' ', :a2 => ' ', :a3 => ' ',
    :b1 => ' ', :b2 => ' ', :b3 => ' ',
    :c1 => ' ', :c2 => ' ', :c3 => ' '
  }

end

board = GameBoard.new

board.make_move("X", "a1")
board.make_move("X", "a2")
board.make_move("X", "a3")

board.print_board

board.check_win("O")