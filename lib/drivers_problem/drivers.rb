class DriversProblem::Drivers
  attr_accessor :name, :trip, :trip_distance

  @@all = []

  def initialize(name)
    @name = name
    @trip_distance = 0
    @@all << self
  end

  def self.all
    @@all
  end

  def trip_output
    if self.trip
      puts "#{self.name}: #{self.trip.miles_driven.to_i} miles @ #{self.trip.trip_speed} mph"
    else
      puts "#{self.name}: 0 miles"
    end
  end

end
