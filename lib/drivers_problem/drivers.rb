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

end
