class DriversProblem::Trips
  attr_accessor :driver
  attr_reader :start_time, :end_time, :miles_driven, :trip_time, :trip_speed

  def initialize(arg)
    data = arg.split(" ")
    @driver = Driver.new(data[0])
    
  end

  def start_time(data)
    starting = DateTime.parse(data[1])
    @start_time = starting.hour*60 + starting.min
  end

  def end_time(data)
    ending = DateTime.parse(data[2])
    @end_time = ending.hour*60 + ending.min
  end

  def miles_driven(data)
    @miles_driven = data[3]
  end

  def trip_time
    @trip_time = @end_time - @start_time
  end

  def trip_speed
    @trip_speed = ((@miles_driven/@trip_time)*60).round
  end
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
