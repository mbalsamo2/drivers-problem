class DriversProblem::Drivers
  attr_accessor :name, :trip

  @@all = []

  def initialize(name_arg)
    puts "2-----------------2"
    @name = name_arg[1]
    @@all << self
  end

  def self.all
    @@all
  end

  def trip_output
    # puts "#{self.name}: #{self.trip.miles_driven.to_i}"
    DriversProblem::Trips.all.each do |trip|
      # binding.pry
      if trip.start_time
        puts "#{self.name}: #{trip.miles_driven.to_i} miles @ #{trip.trip_speed} mph"
      else
        # puts "#{self.name}: 0 miles"
      end
    end
  end

end
