class DockingStation
  def dock(bike)
    @bike = bike
  end

  def release_bike
    Bike.new
  end

  attr_reader :bike
end
