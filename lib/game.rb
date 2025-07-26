require_relative 'game_board'

HELPER_TEXT = 

class Game
  def initialize(player_one, player_two)
    @board = GameBoard.new
    @player_one = player_one
    @player_two = player_two
    puts "Welcome #{player_one} and #{player_two} to a game of Tic Tac Toe"
    puts "To play you will each take turns entering where you would like to mark"
    puts "please review the below grid to know what to enter for each square"
    puts
    puts "a1 a2 a3\nb1 b2 b3\nc1 c2 c3"
    puts
    puts "for example if you want to play in the middle square you would enter b2"
  end

  def help
    puts
    puts "Welcome #{player_one} and #{player_two} to a game of Tic Tac Toe"
    puts "To play you will each take turns entering where you would like to mark"
    puts "please review the below grid to know what to enter for each square"
    puts
    puts "a1 a2 a3\nb1 b2 b3\nc1 c2 c3"
    puts
    puts "for example if you want to play in the middle square you would enter b2"
  end

  def check_tie(current_board)
    if current_board.values.none?(' ')
      puts "The game is a tie"
      true
    end
    false
  end

  private
  attr_accessor :player_one, :player_two
end

game = Game.new("Test 1", "Test 2")

game.help