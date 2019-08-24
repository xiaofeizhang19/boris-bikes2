require "docking_station"
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

  it "fixes the broken bike" do
    subject.report_broken
    subject.fix
    expect(subject.broken?).to eq false
  end

end
