class DockingStation
  attr_reader :capacity
  attr_reader :docks

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @docks = []
    @capacity = capacity
  end

  def release_bike
    raise "No bikes available" if empty?
    docks.pop
  end

  def dock(bike)
    raise "Dock is full" if full?
    docks << bike
  end

  private

  def full?
    docks.count == capacity
  end

  def empty?
    docks.empty?
  end

end
