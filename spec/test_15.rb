require_relative 'spec_helper'

describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
  end

  describe "#initialize" do
    it "should be a Unit" do
      expect(@siege_engine.class).to be(SiegeEngine)
    end

    it "should have superclass Unit" do
      expect(@siege_engine.class.superclass).to be(Unit)
    end

    it "should have 50 AP" do
      expect(@siege_engine.attack_power).to be(50)
    end

    it "should have 400 HP" do
      expect(@siege_engine.health_points).to be(400)
    end
  end

  describe "#attack!" do
    it "should not be able to attack a peasant" do
      peasant = Peasant.new
      expect(@siege_engine.attack!(peasant)).to be(nil)
    end
  end

  describe "#attack!" do
    it "should not be able to attack a footman" do
      footman = Footman.new
      expect(@siege_engine.attack!(footman)).to be(nil)
    end
  end

  describe "#attack!" do
    it "should decrease siege_engine1's health_points to 350 (50 points of damage)" do
      siege_engine1 = SiegeEngine.new
      @siege_engine.attack!(siege_engine1)
      expect(siege_engine1.health_points).to be(350)
    end
  end

  #describe "#attack!" do
  #  it "should not be able to attack a footman" do
  #    footman = Footman.new
  #    expect(@siege_engine.attack!(footman)).to be(nil)
  #  end
  #end


end

describe Barracks do
  before :each do
    @barracks = Barracks.new
  end

  describe "#train_siege_engine" do
    it "should decrease gold by 200" do
      @barracks.train_siege_engine
      expect(@barracks.gold).to be(800)
    end

    it "should decrease lumber by 60" do
      @barracks.train_siege_engine
      expect(@barracks.lumber).to be(440)
    end

    it "should decrease food by 3" do
      @barracks.train_siege_engine
      expect(@barracks.food).to be(77)
    end
  end

  describe "#damage" do
    it "should decrease health by 100" do
      siege_engine = SiegeEngine.new
      @barracks.damage(siege_engine)
      expect(@barracks.health_points).to be(400)
    end
  end
end
