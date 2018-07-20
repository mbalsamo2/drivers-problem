class DriversProblem::CLI
  attr_accessor :data, :sorted_data

  def initialize(path = "../../input.txt")
    @data = STDIN.read.split("\n").map {|line| line.split(" ")}
  end

  def call
    making_objects
    sort_data
    final_output
  end

  def making_objects
    @data.each do |info|
      case info[0]
      when "Trip"
        DriversProblem::Trip.new(info)
      when "Driver"
        DriversProblem::Driver.new(info[1])
      end
    end
  end

  def final_output
    @sorted_data.each do |driver|
      driver.trip_output
    end
  end

  def sort_data
    @sorted_data = DriversProblem::Driver.all.sort_by(&:trip_distance).reverse
  end

end
