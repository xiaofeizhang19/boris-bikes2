require "boris_bikes"

describe DockingStation do
  it "responded to release_bike method" do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it "responds to dock" do
    expect(DockingStation.new).to respond_to(:dock)
  end

  it "dock takes an argument" do
    expect(DockingStation.new).to respond_to(:dock).with(1).argument
  end

  it "check bikes at docking station" do
    bike = Bike.new
    expect((DockingStation.new).dock(bike)).to eq [bike]
  end

  it "allows user to set the capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error 'Docking station full'
    end
  end
#     it 'has a variable capacity' do
#     docking_station = DockingStation.new(50)
#     50.times { docking_station.dock_bike Bike.new }
#     expect{ docking_station.dock_bike Bike.new }.to raise_error 'Docking station full'
#   end
# end

  describe '#dock' do
    it 'raises an error when full' do
      subject.capacity.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end

    it 'accepts a bike if it is broken' do
      bike = Bike.new
      bike.report_broken
      expect { subject.dock(bike) }.not_to raise_error 'Bike is broken'
    end
  end

  describe '#release_bike' do
    it 'raises an error when there no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'releases a bike' do
      bike = Bike.new
        subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'does not release a broken bike' do
      bike = Bike.new
      bike.report_broken
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error 'Bike is broken'
    end
  end


end



  # it "Docking Station responds to working?" do
  #   expect((DockingStation.new).release_bike).to respond_to(:working?)
  # end
  #
  # it "Docking Station gets a working bike" do
  #   expect((DockingStation.new).release_bike.working?).to eq true
  # end

  #
  # it "returns docked bikes" do
  #   bike = Bike.new
  #
  #   subject.dock_bike(bike)
  #   expect(a.bike).to eq bike
  # end
