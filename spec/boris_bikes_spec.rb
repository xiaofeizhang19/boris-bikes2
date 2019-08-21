require_relative "../lib/boris_bikes"

describe DockingStation do
  it "responded to release_bike method" do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
end
