class Player
  attr_reader :name, :hit_points

  def initialize(player)
    @name = player
    @hit_points = 100
  end
end
