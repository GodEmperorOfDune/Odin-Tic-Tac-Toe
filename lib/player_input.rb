module PlayerInput
  def user_input(valid_choices, error_text)
    valid_input = false
    until valid_input do
      user_input = gets.chomp.downcase
      if valid_choices.include? user_input
        valid_input = true
        return user_input
      else
        puts "Please enter a valid input."
        puts error_text
      end
    end
  end

  def get_player_input
    player_input = user_input(@@VALID_COORDINATES, @@COORDINATE_ERROR_MESSAGE)
    return player_input
  end

  def get_new_game
    puts "Please enter Yes or No"
    new_game_input = user_input(@@VALID_NEW_GAME_CHOICES, @@NEW_GAME_ERROR_MESSAGE)
    return new_game_input
  end

  private
  @@VALID_COORDINATES = ["a1", "a2", "a3","b1", "b2", "b3","c1", "c2", "c3"]
  @@COORDINATE_ERROR_MESSAGE = "a1 a2 a3\nb1 b2 b3\nc1 c2 c3"
  @@VALID_NEW_GAME_CHOICES = ["yes", "no"]
  @@NEW_GAME_ERROR_MESSAGE = "Yes or No"
end