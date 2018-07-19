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
      if self.trip.trip_speed > 5 && self.trip.trip_speed < 100
        puts "#{self.name}: #{self.trip.miles_driven.to_i} miles @ #{self.trip.trip_speed} mph"
      end
      # self.trip.trip_speed > 5 && self.trip.trip_speed < 100 ? puts "#{self.name}: #{self.trip.miles_driven.to_i} miles @ #{self.trip.trip_speed} mph" : self.trip.delete(self.trip)
      # puts "#{self.name}: #{self.trip.miles_driven.to_i} miles @ #{self.trip.trip_speed} mph"
    else
      puts "#{self.name}: 0 miles"
    end

    # @sorted_data.delete_if {|driver| driver.trip.trip_speed < 5 || driver.trip.trip_speed > 100 }

  end

end
