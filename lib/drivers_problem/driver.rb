class DriversProblem::Driver
  attr_accessor :name, :trip, :trip_distance, :total_time

  @@all = []

  def initialize(name)
    @name = name
    @trip_distance = 0
    @total_time = 0
    @@all << self
  end

  def self.all
    @@all
  end

  def trip_output
    if self.trip_distance != 0 && self.total_time != 0
      puts "#{self.name}: #{self.trip_distance.to_i} miles @ #{self.average_speed} mph"
    else
      puts "#{self.name}: 0 miles"
    end
  end

  def average_speed
    ((self.trip_distance/self.total_time)*60).round
  end

end
