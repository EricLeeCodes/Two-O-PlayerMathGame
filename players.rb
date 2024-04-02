class Players
  attr_reader :player_number, :player_lives

  def initialize(player_number, player_lives)
    @player_number = player_number
    @player_lives = player_lives
  end

  def decrement_lives
    @player_lives -= 1 
  end

end


