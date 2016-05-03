require_relative 'spec_helper'

describe Unit do
  before :each do
    @unit1 = Unit.new(10,10)
    @unit2 = Unit.new(10,10)
  end

  describe "#can_attack?" do
    it "should return false if unit is dead" do
      @unit1.health_points = 0
      expect(@unit1.can_attack?).to be(false)
    end
  end

  describe "#attack!" do
    it "should return nil if attacked unit is dead" do
      @unit1.health_points = 0
      expect(@unit2.attack!(@unit1)).to be(nil)
    end
    it "should return nil if attacking unit is dead" do
      @unit1.health_points = 0
      expect(@unit1.attack!(@unit2)).to be(nil)
    end

  end


end
