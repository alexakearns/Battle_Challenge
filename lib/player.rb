class Player
  DEFAULT_HIT_POINTS = 100
  DEFAULT_ATTACK_POINTS = 10
  attr_reader :name, :hit_points

  def initialize(player)
    @name = player
    @hit_points = DEFAULT_HIT_POINTS
  end

  def attack(oppo)
    oppo.reduce
  end

  def reduce
    @hit_points -= DEFAULT_ATTACK_POINTS
  end
end
