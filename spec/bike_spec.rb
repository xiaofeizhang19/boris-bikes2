require "boris_bikes"
require "bike"

describe Bike do
  describe '#working?' do
    it "responds to working?" do
      expect(Bike.new).to respond_to(:working?)
    end
  end
  
  it "reports the bike as broken when returned" do
    subject.report_broken
    expect(subject).to be_broken
  end
end
