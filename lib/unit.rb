class Unit
  attr_accessor :attack_power, :health_points
  def initialize(hp,ap)
    @attack_power = ap
    @health_points = hp
  end

  def damage(ap)
    @health_points -= ap
  end

  def attack!(enemy)
    enemy.damage(@attack_power)
  end
end
