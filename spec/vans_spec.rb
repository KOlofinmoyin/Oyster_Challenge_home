require 'vans'

describe Vans do
  let(:van) { described_class.new }
  let(:station) { double :docking_station }
  let(:broken_bike) { double :broken_bike }
  let(:fixed_bike) { double :fixed_bike }
  let(:broken_bikes) { double :broken_bikes }
  let(:garage) { double :garage }
  let(:bike) { double :bike }
  # As a maintainer of the system,
  # So that I can manage broken bikes and not disappoint users,
  # I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.
  it "can pickup broken bikes" do
    allow(broken_bike).to receive(:broken).and_return(true)
    allow(station).to receive(:release_bike).and_return(broken_bike)
    expect(station.release_bike).to eq broken_bike
  end

  it "delivers broken bikes to garage" do
    expect(van.deliver_to_garage(broken_bike)).to eq broken_bike
  end

  it "collects working bikes" do
    allow(broken_bike).to receive(:fix).and_return(true)
    fixed_bikes = broken_bikes
    expect(van.collect(fixed_bike)).to be_a_kind_of(Bike)
  end

  it "delivers working bikes" do
    allow(broken_bike).to receive(:fix).and_return(true)
    fixed_bikes = broken_bikes
    expect(van.collect(fixed_bike)).to be_a_kind_of(Bike)
  end

  it "distributes fixed bikes" do
    allow(bike).to receive(:fixed).and_return([true])
    allow(station).to receive(:dock).and_return([bike])
    expect(station.dock(bike)).to eq [bike]
  end
end
