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

  it "docks a bike at the docking station" do
    expect(stratford_docking_station.dock(bike)).to eq bike
  end

  it "displays a bike that has been docked" do

  end
end
