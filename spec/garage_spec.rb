require 'garage'
require 'bike'

describe Garage do
  let(:garage) { described_class.new }
  let(:van) { double :maintenance_van }
  let(:broken_bike) { double :broken_bike }
  let(:is_working) { double :is_working }

  it "accepts broken_bikes from vans" do
    allow(broken_bike).to receive(:is_working).and_return(true)
    fixed_bike = broken_bike
    expect(garage.fix(broken_bike)).to a_kind_of(Bike)
  end
end
