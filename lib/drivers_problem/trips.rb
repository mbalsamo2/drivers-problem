class DriversProblem::Trips
  attr_accessor :driver
  attr_reader :start_time, :end_time, :miles_driven

  def initialize(arg)
    data = arg.split(" ")
    @driver = Driver.new(data[0])
  end

  def start_time()
  end
end

"Dan 07:15 07:45 17.3"
