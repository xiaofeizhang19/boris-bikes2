require_relative "../lib/boris_bikes"

describe DockingStation do
  it "responded to release_bike method" do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it "Docking Station responds to working?" do
    expect((DockingStation.new).release_bike).to respond_to(:working?)
  end

  it "Docking Station gets a working bike" do
    expect((DockingStation.new).release_bike.working?).to eq(true)

  end


end
