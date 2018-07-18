class DriversProblem::Trips
  attr_accessor :driver
  attr_reader :start_time, :end_time, :miles_driven

  def initialize(arg)
    data = arg.split(" ")
    @driver = Driver.new(data[0])
  end

  def trip_time()

  end
end

"Dan 07:15 07:45 17.3"
(x miles/y min) * (60min/1hr)
start_time = '07:15'.split(":")
start_time[0]

a = DateTime.parse("07:15")
a_minutes = a.hour*60 + a.min

b = DateTime.parse("07:45")
b_minutes = b.hour*60 + b.min

trip_time = b_minutes - a_minutes

speed = (miles/trip_time)*(60)
