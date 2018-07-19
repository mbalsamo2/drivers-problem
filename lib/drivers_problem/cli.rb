class DriversProblem::CLI
  attr_accessor :data

  def call
    # puts "Please feed me your data..."
    # @data = gets.split("\n").map {|line| line.split(" ")}
    @data = STDIN.read.split("\n").map {|line| line.split(" ")}

    # ARGV.each do |b|
    #     puts b
    # end
    # @data = STDIN.gets
    making_objects
    final_output
  end

  def making_objects
    # puts @data[0]
    @data.each do |info|
        puts info
        puts "--------------------"
        @resource = DriversProblem::Trips.new(info)
    end
  end

  def final_output
    DriversProblem::Drivers.all.each do |driver|
      driver.trip_output
    end
  end

end
