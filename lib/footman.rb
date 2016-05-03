# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit
  attr_accessor :health_points, :attack_power
  def initialize
    @attack_power = 10
    @health_points = 60
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

  def attack!(enemy)
    if !enemy.dead? && !self.dead?
      enemy.damage(@attack_power/2.ceil)
    else
      puts "Cannot attack a dead unit"
    end
  end

  def damage(ap)
    self.health_points -= ap
  end

end
