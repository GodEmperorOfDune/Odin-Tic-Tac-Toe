class GameBoard
  @@empty_board = {
    :a1 => ' ', :a2 => ' ', :a3 => ' ',
    :b1 => ' ', :b2 => ' ', :b3 => ' ',
    :c1 => ' ', :c2 => ' ', :c3 => ' '
  }

  def initialize
    @board = @@empty_board
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
end