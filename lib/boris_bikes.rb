require_relative '../lib/bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock_bike(live_bike)
    fail 'Docking station full' if @bikes.length >= 20
    @bikes << live_bike
  end
end
