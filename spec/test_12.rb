require_relative 'spec_helper'

describe Unit do
  before :each do
    @unit = Unit.new(10,10)
    @footman = Footman.new
    @peasant = Peasant.new
  end

  describe "#dead?" do
    it "should return true for a unit" do
      @unit.health_points = 0
      expect(@unit.dead?).to eq(true)
    end

    it "should return true for a footman" do
      @footman.health_points = 0
      expect(@footman.dead?).to eq(true)
    end

    it "should return true for a peasant" do
      @peasant.health_points = 0
      expect(@peasant.dead?).to eq(true)
    end
  end
end
