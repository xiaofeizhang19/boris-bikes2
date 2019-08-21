
class DockingStation
  attr_reader :bike

  def release_bike
    Bike.new
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
