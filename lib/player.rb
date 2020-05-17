class Player
  attr_reader :name, :hit_points

  def initialize(player)
    @name = player
    @hit_points = 100
  end

  def attack(oppo)
    oppo.reduce
  end

  def reduce
    @hit_points -= 10
  end
end
