require_relative 'spec_helper'

describe Barracks do
  before :each do
    @barracks = Barracks.new
  end

  describe "#initialize" do
    it "should set lumber equal to 500" do
      expect(@barracks.lumber).to be(500)
    end
  end
end
