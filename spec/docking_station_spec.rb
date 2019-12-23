require 'docking_station'
require 'bike'

describe DockingStation do
  let(:stratford_docking_station) { described_class.new }
  let(:bike) { Bike.new }

  it "releases a bike" do
    expect(stratford_docking_station).to respond_to(:release_bike)
  end

  it "returns a working bike" do
    stratford_docking_station.dock(bike)
    expect(stratford_docking_station.release_bike).to be_a(Bike)
  end

  it "docks a bike at the docking station" do
    expect(stratford_docking_station.dock(bike)).to match_array [bike]
  end

  it "displays a bike that has been docked" do

  end

context "No bikes available." do
  it "raises an error" do
    expect { stratford_docking_station.release_bike }.to raise_error 'Cannot release bikes: No bikes available.'
  end
end

# As a maintainer of the system,
# So that I can control the distribution of bikes,
# I'd like docking stations not to accept more bikes than their capacity.

context "Docking Station full" do
  it "raises an error" do
    20.times { stratford_docking_station.dock(bike) }
    expect { stratford_docking_station.dock(bike) }.to raise_error "Cannot dock bike: Docking station full."
  end
end
end
