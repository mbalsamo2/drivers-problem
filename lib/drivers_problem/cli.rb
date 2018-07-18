class DriversProblem::CLI

  def some_method
    puts "Please feed me your data..."
    data = gets.split("\n")

    data.each do |info|
      if info.split(" ").length > 2
        resource = DriversProblem::Trip.new()
      else
        resource = DriversProblem::Driver.new()
      end
    end
    # some kind of check driver only vs full string
    if data.length > 1
      resource = DriversProblem::Trip.new()
    else
      resource =
    end
    puts "#{resource.driver}"
  end

end
