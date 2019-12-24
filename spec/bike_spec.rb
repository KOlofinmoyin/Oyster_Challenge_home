require 'bike'

describe Bike do
  let(:wally) { described_class.new }

  it "confirms a bike is working" do
    expect(wally.is_working?).to be(true)
  end

  context "broken when returned" do
    it "reports a bike" do
      wally.report_broken?
      expect(wally).to be_broken
    end
  end
end
