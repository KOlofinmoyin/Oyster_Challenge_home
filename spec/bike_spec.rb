require 'bike'

describe Bike do
  let(:wally) { described_class.new }
  let(:bike) { double :wally }
  let(:is_working) { double :is_working }

  it "confirms a bike is working" do
    allow(bike).to receive(:is_working).and_return(true)
    expect(bike.is_working).to be(true)
  end

  context "broken when returned" do
    it "reports a bike" do
      wally.report_broken?
      expect(wally).to be_broken
    end
  end
end
