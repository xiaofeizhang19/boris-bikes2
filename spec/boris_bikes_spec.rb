require_relative "../lib/boris_bikes"

describe DockingStation do
  it "responded to release_bike method" do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it "responds to dock_bike" do
    expect(DockingStation.new).to respond_to(:dock_bike)
  end

  it "dock_bike takes an argument" do
    expect(DockingStation.new).to respond_to(:dock_bike).with(1).argument
  end

  it "check bikes at docking station" do
    bike = Bike.new
    expect((DockingStation.new).dock_bike(bike)).to eq [bike]
  end

  describe '#dock_bike' do
    it 'raises an error when full' do
      DockingStation::DEFAULT_CAPACITY.times do
        subject.dock_bike Bike.new
      end
      expect { subject.dock_bike Bike.new }.to raise_error 'Docking station full'
    end
  end

  describe '#release_bike' do
    it 'raises an error when there no bikes available' do
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end

    it 'releases a bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end
  end


end



  # it "Docking Station responds to working?" do
  #   expect((DockingStation.new).release_bike).to respond_to(:working?)
  # end
  #
  # it "Docking Station gets a working bike" do
  #   expect((DockingStation.new).release_bike.working?).to eq(true)
  #
  # end

  #
  # it "returns docked bikes" do
  #   bike = Bike.new
  #
  #   subject.dock_bike(bike)
  #   expect(a.bike).to eq bike
  # end
