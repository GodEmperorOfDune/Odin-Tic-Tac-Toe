require_relative 'player_input'

class GameBoard
  include PlayerInput

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

  def make_move(icon)
    valid_coordinate = false
    until valid_coordinate do
      coordinates = self.get_player_input
      if @board[coordinates.to_sym] = ' '
        @board[coordinates.to_sym] = icon
        valid_coordinate = true
      else
        puts "Please enter an empty space"
      end
    end
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