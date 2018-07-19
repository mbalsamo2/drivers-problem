class DriversProblem::Trips
  attr_accessor :driver
  attr_reader :start_time, :end_time, :miles_driven, :trip_time, :trip_speed, :trip_output

  @@all = []

  def initialize(arg)
    self.find_driver(arg[1])
    arg[2] ? self.start_time=(arg[2]) : @start_time = nil
    arg[3] ? self.end_time=(arg[3]) : @end_time = nil
    arg[4] ? self.miles_driven=(arg[4]) : @miles_driven = nil
    @@all << self
    @driver.trip = self
  end

  def find_driver(arg)
    @driver = DriversProblem::Drivers.all.detect { |driver| driver.name == arg }

    @driver ||= DriversProblem::Drivers.new(arg)
  end

  def start_time=(data)
    starting = DateTime.parse(data)
    @start_time = starting.hour*60 + starting.min
  end

  def end_time=(data)
    ending = DateTime.parse(data)
    @end_time = ending.hour*60 + ending.min
  end

  def miles_driven=(data)
    @miles_driven = data.to_f
  end

  def trip_time
    @end_time - @start_time
  end

  def trip_speed
    @trip_speed = ((@miles_driven/self.trip_time)*60).round
  end

  def self.all
    @@all
  end

end
