class DockingStation
  attr_reader :bike

  def initialize
    @dock = 0
  end

  def release_bike
    raise "No bikes available" if @dock.zero?
    Bike.new
  end

  def dock(bike)
    raise "Dock is full" if @dock == 1
    @dock += 1
    @bike = bike
  end

end
