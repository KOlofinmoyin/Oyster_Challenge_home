class Bike
  attr_reader :working

  def initialize(working=true)
    @working = working
    @broken = false
  end

  def is_working?
    working
  end

  def report_broken?
    @broken = true
  end

  def broken?
    @broken
  end
end
