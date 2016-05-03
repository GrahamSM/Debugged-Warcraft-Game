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
    if !enemy.dead? && !self.dead?
      enemy.damage(@attack_power)
    else
      puts "Cannot attack a dead unit"
    end
  end

  def dead?
    @health_points <= 0
  end

  def can_attack?
    !dead?
  end

end
