require 'bike'

describe Bike do
  let(:wally) { described_class.new }

  it "confirms a bike is working" do
    expect(wally.is_working?).to be(true)
  end
end
