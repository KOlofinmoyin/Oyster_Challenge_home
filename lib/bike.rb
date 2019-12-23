class Bike
  attr_reader :working
  
  def initialize(working=true)
    @working = working
  end

  def is_working?
    working
  end
end
