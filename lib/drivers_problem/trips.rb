class DriversProblem::Trips
  attr_accessor :driver
  attr_reader :start_time, :end_time, :miles_driven, :trip_time, :trip_speed, :trip_output

  @@all = []

  def initialize(arg)
    @driver = DriversProblem::Drivers.new(arg)
    arg[2] ? self.start_time=(arg[2]) : @start_time = nil
    arg[3] ? self.end_time=(arg[3]) : @end_time = nil
    arg[4] ? self.miles_driven=(arg[4]) : @miles_driven = nil
    @@all << self
  end

  def start_time=(data)
    starting = DateTime.parse(data)
    @start_time = starting.hour*60 + starting.min
  end

  def end_time=(data)
    ending = DateTime.parse(data)
    @end_time = ending.hour*60 + ending.min
    # binding.pry
  end

  def miles_driven=(data)
    @miles_driven = data.to_f
  end

  def trip_time
    @end_time - @start_time
  end

  def trip_speed
    # binding.pry
    @trip_speed = ((@miles_driven/self.trip_time)*60).round
  end

  def self.all
    @@all
  end

  # def trip_output
  #   if
  #     @trip_output = "#{self.driver.name}: #{@miles_driven} miles @ #{@trip_speed} mph"
  #   end
  # end
end

# "Dan 07:15 07:45 17.3"
# (x miles/y min) * (60min/1hr)
#
# a = DateTime.parse("07:15")
# a_minutes = a.hour*60 + a.min
#
# b = DateTime.parse("07:45")
# b_minutes = b.hour*60 + b.min
#
# trip_time = b_minutes - a_minutes
#
# speed = (miles/trip_time)*(60)
