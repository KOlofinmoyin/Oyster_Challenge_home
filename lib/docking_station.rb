require_relative 'bike'

class DockingStation
  attr_reader :bikes, :bike

  def initialize()
    @bikes = []
  end

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end
end
