class DriversProblem::Drivers
  attr_accessor :name, :trip, :trip_distance, :average_speed

  @@all = []

  def initialize(name)
    @name = name
    @trip_distance = 0
    @average_speed = 0
    @@all << self
  end

  def self.all
    @@all
  end

  def trip_output
    if self.trip
      if self.trip.trip_speed > 5 && self.trip.trip_speed < 100
        puts "#{self.name}: #{self.trip_distance.to_i} miles @ #{((self.trip_distance/self.average_speed)*60).round} mph"
      end
    else
      puts "#{self.name}: 0 miles"
    end
  end

end
