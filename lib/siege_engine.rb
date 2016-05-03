class SiegeEngine < Unit

  def initialize
    super(400,50)
  end

  def attack!(enemy)
    if !enemy.dead? && !self.dead? && enemy.class == Barracks
      enemy.damage(@attack_power*2)
    elsif !enemy.dead? && !self.dead? && enemy.class == SiegeEngine
      enemy.damage(@attack_power)
    else
      puts "Cannot attack that unit"
    end
  end
end
