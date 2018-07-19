class DriversProblem::Trips
  attr_accessor :driver, :elapsed_time
  attr_reader :miles_driven, :trip_time, :trip_speed, :trip_output

  @@all = []

  def initialize(arg)
    self.find_driver(arg[1])
    @elapsed_time = 0
    @trip_speed = 0
    # arg[2] ? self.start_time=(arg[2]) : @start_time = 0
    # arg[3] ? self.end_time=(arg[3]) : @end_time = 0
    arg[4] ? self.miles_driven=(arg[4]) : @miles_driven = 0
    @elapsed_time += self.calculate_time(arg[2], arg[3])
    @@all << self
    @driver.trip = self
    @driver.trip_distance += @miles_driven if @miles_driven
    # @driver.trip_distance += @miles_driven if @miles_driven && (@trip_speed < 5 || @trip_speed > 100)
  end

  def calculate_time(start_time, end_time)
    @trip_time = (DateTime.parse(end_time).hour*60 + DateTime.parse(end_time).min) - (DateTime.parse(start_time).hour*60 + DateTime.parse(start_time).min)
  end

  def find_driver(arg)
    @driver = DriversProblem::Drivers.all.detect { |driver| driver.name == arg }

    @driver ||= DriversProblem::Drivers.new(arg)
  end

  # def start_time=(data)
  #   starting = DateTime.parse(data)
  #   @start_time = starting.hour*60 + starting.min
  # end
  #
  # def end_time=(data)
  #   ending = DateTime.parse(data)
  #   @end_time = ending.hour*60 + ending.min
  # end

  def miles_driven=(data)
    @miles_driven = data.to_f
  end

  # def trip_time
  #   @end_time - @start_time
  # end

  def trip_speed
    # @trip_speed = 0
    @trip_speed = ((@miles_driven/self.trip_time)*60).round
  end

  def self.all
    @@all
  end

end
