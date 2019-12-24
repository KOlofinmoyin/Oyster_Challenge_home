class Garage
  def initialize(bike = Bike.new(true))
    @bike = bike
  end

  def fix(bike)
    @bike
  end
end
