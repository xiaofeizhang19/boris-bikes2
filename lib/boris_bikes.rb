
class DockingStation
  attr_reader :bike

  def release_bike
    fail "No Bikes available" unless @bike
    @bike
  end

  def dock_bike(live_bike)
    @bike = live_bike
  end
=begin
  def bike
    @bike
  end
=end
end

class Bike
  def working?
    return true
  end
end
