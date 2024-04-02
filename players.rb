class Players
  attr_reader :player_number, :player_lives

  def initialize(player_number, player_lives)
    @player_number = player_number
    @player_lives = player_lives
  end

  def to_s
    "Player #{@player_number} Lives: #{player_lives}"
  end
end
