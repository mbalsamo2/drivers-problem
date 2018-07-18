class DriversProblem::CLI
  attr_accessor :data

  def call
    puts "Please feed me your data..."
    @data = gets.split("\n").map {|line| line.split(" ")}
    making_objects
    final_output
  end

  def making_objects
    @data.each do |info|
      # if info.length > 2
        @resource = DriversProblem::Trips.new(info)
      # else
      #   @resource = DriversProblem::Drivers.new(info)
      # end
    end
  end

  def final_output
    DriversProblem::Drivers.all.each do |driver|
      driver.trip_output
    end
  end

end
