class DriversProblem::CLI
  attr_accessor :data

  def call
    puts "Please feed me your data..."
    @data = gets
    binding.pry
    # @data = gets.split("\n")
    making_objects
    final_output
  end

  def making_objects
    binding.pry
    @data.each do |info|
      if info.split(" ").length > 2
        @resource = DriversProblem::Trips.new(info)
      else
        @resource = DriversProblem::Drivers.new(info)
      end
    end
  end

  def final_output
    # binding.pry
    DriversProblem::Drivers.all.each do |driver|
      driver.trip_output
    end
  end

end
