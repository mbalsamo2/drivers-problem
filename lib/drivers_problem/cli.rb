class DriversProblem::CLI

  def call
    puts "Please feed me your data..."
    data = gets.split("\n")

    data.each do |info|
      if info.split(" ").length > 2
        @resource = DriversProblem::Trips.new(info)
        puts "#{@resource.driver}"

      else
        @resource = DriversProblem::Drivers.new(info)
        puts "#{@resource.name}"
      end
    end

    # some kind of check driver only vs full string


  end

end
