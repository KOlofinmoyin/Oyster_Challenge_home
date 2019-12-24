require 'docking_station'
require 'bike'

describe DockingStation do
  let(:stratford_docking_station) { described_class.new }
  let(:bike) { Bike.new }

  it "returns a working bike" do
    stratford_docking_station.dock(bike)
    expect(stratford_docking_station.release_bike).to be_a(Bike)
  end

  it "docks a bike at the docking station" do
    expect(stratford_docking_station.dock(bike)).to match_array [bike]
  end

  it "displays a bike that has been docked" do
    expect(stratford_docking_station.dock(bike)).to match_array [bike]
  end

  context "System maintainer needs a large capacity"
  it "allows a variable capacity" do
    another_station = DockingStation.new(120)
    expect(another_station.capacity).to eq 120
  end

context "No bikes available." do
  it "raises an error" do
    expect { stratford_docking_station.release_bike }.to raise_error 'Cannot release bikes: No bikes available.'
  end
end

context "Docking Station full" do
  it "raises an error" do
    DockingStation::DOCK_STATION_CAPACITY.times { stratford_docking_station.dock(bike) }
    expect { stratford_docking_station.dock(bike) }.to raise_error "Cannot dock bike: Docking station full."
  end
end

context "bike broken" do
  it "doesn't release broken bikes" do
    allow(bike).to receive(:broken?).and_return(true)
    allow(bike).to receive(:report_broken?).and_return(true)
    broken_bike = bike
    broken_bike.report_broken?
    stratford_docking_station.dock(broken_bike)
    expect{ stratford_docking_station.release_bike }.to raise_error 'Cannot release bikes: Bike broken.'
  end
end
end
