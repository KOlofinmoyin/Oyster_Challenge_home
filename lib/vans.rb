class Vans
  def initialize(bike = Bike.new(true))
    @delivered_bikes = []
    @bike = bike
  end

  def deliver_to_garage(broken_bike)
    broken_bike
  end

  def collect(bike)
    @bike
  end

  private
  def is_delivered?
    @delivered
  end
end
