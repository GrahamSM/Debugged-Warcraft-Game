require_relative 'spec_helper'

describe Barracks do
  before :each do
    @barracks = Barracks.new
  end

  describe "@health_points" do
    it "should equal 500" do
      expect(@barracks.health_points).to eq(500)
    end
  end

  describe "#damage" do
    it "should decrease by half the AP of the footman" do
      footman = Footman.new
      @barracks.damage(footman)
      expect(@barracks.health_points).to eq(495)
    end

    it "should inflict a FIXNUM" do
      footman = Footman.new
      expect(footman.attack_power.class).to be(Fixnum)
    end
  end
end
