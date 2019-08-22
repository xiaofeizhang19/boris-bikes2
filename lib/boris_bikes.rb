require_relative '../lib/bike'

class DockingStation
  #attr_reader :bikes
  DEFAULT_CAPACITY = 20
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock_bike(live_bike)
    fail 'Docking station full' if full?
    @bikes << live_bike
  end

  private

  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end
