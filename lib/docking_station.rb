require_relative 'bike'

class DockingStation
  DOCK_STATION_CAPACITY = 20
  attr_reader :bikes, :bike

  def initialize()
    @bikes = []
  end

  def release_bike
    raise 'Cannot release bikes: No bikes available.' if is_empty?
    Bike.new
  end

  def dock(bike)
    @bike = bike
    @bikes << @bike
  end

  private
  def is_empty?
    @bikes.empty?
  end
end
