require_relative 'bike'

class DockingStation
  DOCK_STATION_CAPACITY = 20
  attr_reader :bikes, :bike, :capacity

  def initialize(capacity = DOCK_STATION_CAPACITY, bike = Bike.new )
    @bikes = []
    @capacity = capacity
    @bike = bike
  end

  def release_bike
    raise 'Cannot release bikes: No bikes available.' if is_empty?
    released_bike = @bikes.pop

    raise 'Cannot release bikes: Bike broken.' if released_bike.broken?

    released_bike
  end

  def dock(bike)
    raise "Cannot dock bike: Docking station full." if is_full?
    @bike = bike
    @bikes << @bike
  end

  def is_broken?
    @bike.report_broken?
  end

  private
  def is_empty?
    @bikes.empty?
  end

  def is_full?
    @bikes.length >= DOCK_STATION_CAPACITY
  end
end
