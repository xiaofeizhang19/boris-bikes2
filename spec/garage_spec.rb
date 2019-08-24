require 'garage'

describe Garage do

  it 'fixes a broken bike' do
    expect(subject).to respond_to(:fix_bike).with(1).argument
  end

  let(:bike) {double :bike, broken?: true}
  describe '#fix_bike' do
    it 'fixes a broken bike' do
      allow(bike).to receive(:fix)
      subject.fix_bike bike
      allow(bike).to receive(:broken?).and_return(false)
    end
  end

end      