class Player

  attr_reader :name, :player_lives

  def initialize name
    @name = name
    @player_lives = 3
  end

  def lose_life
    @player_lives -= 1
  end

end

