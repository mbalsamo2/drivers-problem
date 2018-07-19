class DriversProblem::Drivers
  attr_accessor :name

  @@all = []

  def initialize(name_arg)
    @name = name_arg[1]
    @@all << self
  end

  def self.all
    @@all
  end

  def trip_output
    DriversProblem::Trips.all.each do |trip|
      if trip.start_time
        puts "#{self.name}: #{trip.miles_driven.to_i} miles @ #{trip.trip_speed} mph"
      else
        puts "#{self.name}: 0 miles"
      end
    end
  end

end
