class DriversProblem::CLI
  attr_accessor :data

  def call
    @data = STDIN.read.split("\n").map {|line| line.split(" ")}
    making_objects
    final_output
  end

  def making_objects
    @data.each do |info|
      if info.length > 2
        DriversProblem::Trips.new(info)
      else
        DriversProblem::Drivers.new(info[1])
      end
    end
  end

  def final_output
    DriversProblem::Drivers.all.each do |driver|
      driver.trip_output
    end
  end

end
