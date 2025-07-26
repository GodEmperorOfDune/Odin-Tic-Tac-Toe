require_relative 'game_board'
require_relative 'player_input'

class Game
  include PlayerInput
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

  def player_one_turn
    puts "Please enter your coordinate #{player_one}"
    board.make_move("X")
    board.print_board
    if board.check_win("X")
      puts "#{player_one} has Won"
      puts "Would you like to play another round"
      new_game_answer = self.get_new_game
      return new_game_answer
    end
    if board.check_tie
      puts "Would you like to play another round"
      new_game_answer = self.get_new_game
      return new_game_answer
    end
    player_two_turn
  end

  def player_two_turn
    puts "Please enter your coordinate #{player_two}"
    board.make_move("O")
    board.print_board
    if board.check_win("O")
      puts "#{player_two} has Won"
      puts "Would you like to play another round"
      new_game_answer = self.get_new_game
      return new_game_answer
    end
    if board.check_tie
      puts "Would you like to play another round"
      new_game_answer = self.get_new_game
      return new_game_answer
    end
    player_one_turn
  end
  private
  attr_accessor :player_one, :player_two, :board
  
end

game = Game.new("Test 1", "Test 2")

game.player_one_turn