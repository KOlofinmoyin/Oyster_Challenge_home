require 'docking_station'
require 'bike'

describe DockingStation do
  let(:stratford_docking_station) { described_class.new }
  let(:bike) { Bike.new }

  it "releases a bike" do
    expect(stratford_docking_station).to respond_to(:release_bike)
  end


    it "returns a working bike" do
      expect(stratford_docking_station.release_bike).to be_a(Bike)
    end
end
