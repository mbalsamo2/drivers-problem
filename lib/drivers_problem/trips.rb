class DriversProblem::Trips
  attr_accessor :driver, :elapsed_time
  attr_reader :miles_driven, :trip_time, :trip_speed, :trip_output

  @@all = []

  def initialize(arg)
    self.find_driver(arg[1])
    @trip_speed = 0
    arg[4] ? self.miles_driven=(arg[4]) : @miles_driven = 0
    @elapsed_time == nil ? @elapsed_time = self.calculate_time(arg[2], arg[3]) : @elapsed_time += self.calculate_time(arg[2], arg[3])
    @@all << self
    @driver.trip = self
    @driver.trip_distance += @miles_driven if @miles_driven
    @driver.total_time += @elapsed_time
  end

  def calculate_time(start_time, end_time)
    @trip_time = (DateTime.parse(end_time).hour*60 + DateTime.parse(end_time).min) - (DateTime.parse(start_time).hour*60 + DateTime.parse(start_time).min)
  end

  def find_driver(arg)
    @driver = DriversProblem::Drivers.all.detect { |driver| driver.name == arg }

    @driver ||= DriversProblem::Drivers.new(arg)
  end

  def miles_driven=(data)
    @miles_driven = data.to_f
  end

  def trip_speed
    @trip_speed = ((@miles_driven/@elapsed_time)*60).round
  end

  def self.all
    @@all
  end

end
