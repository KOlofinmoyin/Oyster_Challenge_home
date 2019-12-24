class Bike
  attr_reader :working, :report_broken

  def initialize(working=true)
    @working = working
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
