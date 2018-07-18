class DriversProblem::Drivers
  attr_accessor :name

  @@all = []

  def initialize(name_arg)
    data = name_arg.split(" ")
    @name = data[1]
    @@all << self
  end

  def self.all
    @@all
  end

  def trip_output
    if !DriversProblem::Trips.all.empty?
      # DriversProblem::Drivers.all.each do |driver|
      #   puts "#{self.name}: 0 miles"
      # end
      DriversProblem::Trips.all.each do |trip|
        # binding.pry
        if DriversProblem::Trips.all.include?(self)
          puts "#{self.name}: #{trip.miles_driven} miles @ #{trip.trip_speed} mph"
        else
          puts "#{self.name}: 0 miles"
        end
      end
    else
      puts "#{self.name}: 0 miles"
    end
  end

end
