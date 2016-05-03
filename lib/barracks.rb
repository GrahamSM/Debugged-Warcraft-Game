class Barracks
  attr_reader :gold, :food, :health_points, :lumber
  def initialize
    @food = 80
    @gold = 1000
    @health_points = 500
    @lumber = 500
  end
  def train_footman
    if can_train_footman?
      @food -= 2
      @gold -= 135
      Footman.new
    end
  end

  def can_train_footman?
    !(self.food < 2 || self.gold < 135)
  end

  def train_peasant
    @gold -= 90
    @food -= 5
    can_train_peasant? ? Peasant.new : nil
  end

  def can_train_peasant?
    !(self.food < 5 || self.gold < 90)
  end

  def damage(enemy)
    if enemy.class == Footman
      @health_points -= (enemy.attack_power/2).ceil
    elsif enemy.class == SiegeEngine
      @health_points -= enemy.attack_power*2
    end
  end

  def train_siege_engine
    if can_train_siege?
      @gold -= 200
      @lumber -= 60
      @food -= 3
      SiegeEngine.new
    end
  end

  def can_train_siege?
    !(self.food < 3 || self.lumber < 60 || self.gold < 200)
  end

end
