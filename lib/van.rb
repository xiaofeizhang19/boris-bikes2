require 'docking_station'

class Van
  VAN_CAPACITY = 10

  def initialize(capacity = VAN_CAPACITY)
    @bikes = []
    @van_capacity = capacity
  end

  def load(bike)
    fail "Van is full" if full?
    @bikes << bike
  end

  def unload(bike)
    fail "Van is empty" if empty?
    @bikes.clear
  end

  private

  def full?
    @bikes.length >= @van_capacity
  end

  def empty?
    @broken_bikes.empty?
  end
end 