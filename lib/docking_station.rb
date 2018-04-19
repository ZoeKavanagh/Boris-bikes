class DockingStation
  attr_reader :docks

  def initialize
    @docks = []
  end

  def release_bike
    raise "No bikes available" if @docks.empty?
    Bike.new
  end

  def dock(bike)
    raise "Dock is full" if @docks.count >= 20
    @docks << bike
  end

end
