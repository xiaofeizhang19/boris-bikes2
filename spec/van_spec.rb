require 'van'

describe Van do
  let(:bike) {double :bike}

  describe 'initialization' do
    it 'defaults capacity' do
      described_class::VAN_CAPACITY.times do
        subject.load(bike)
      end
      expect{ subject.load(bike)}.to raise_error "Van is full"  
    end

  end
end