require_relative '../lib/bike'

class DockingStation
  attr_reader :bike

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock_bike(live_bike)
    fail 'Docking station full' if @bike
    @bike = live_bike
  end
end
