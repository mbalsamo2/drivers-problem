class DriversProblem::Drivers
  attr_accessor :name, :trip

  @@all = []

  def initialize(name)
    puts "2-----------------2"
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def trip_output
    # puts "#{self.name}: #{self.trip.miles_driven.to_i}"
    # DriversProblem::Drivers.all.each do |driver|
      # puts driver.name
      # puts driver.trip.miles_driven
      # binding.pry

      if self.trip
        puts "#{self.name}: #{self.trip.miles_driven.to_i} miles @ #{self.trip.trip_speed} mph"
      else
        puts "#{self.name}: 0 miles"
      end
    end
  # end

end
