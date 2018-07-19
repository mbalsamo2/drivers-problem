class DriversProblem::CLI
  attr_accessor :data, :sorted_data

  def call
    @data = STDIN.read.split("\n").map {|line| line.split(" ")}
    making_objects
    sort_data
    final_output
  end

  def making_objects
    @data.each do |info|
      case info[0]
      when "Trip"
        DriversProblem::Trips.new(info)
      when "Driver"
        DriversProblem::Drivers.new(info[1])
      end
    end
  end

  def final_output
    @sorted_data.each do |driver|
      driver.trip_output
    end
  end

  def sort_data
    @sorted_data = DriversProblem::Drivers.all.sort_by(&:trip_distance).reverse
  end

end
