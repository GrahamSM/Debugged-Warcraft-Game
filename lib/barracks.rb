class Barracks
  attr_reader :gold, :food
  def initialize
    @food = 80
    @gold = 1000
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
end
