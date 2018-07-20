require "spec_helper"

describe "Trip" do
  let(:driver) { DriversProblem::Driver.new("Jan")}
  let(:trip) { DriversProblem::Trip.new(["Trip", "Jan", "08:15", "08:45", "18.3"]) }
  let(:arg) {["Trip", "Jan", "08:15", "08:45", "18.3"]}

  describe "#calculate_time" do
    it "accepts a start time and end time and calculates the time of the trip" do
      expect(trip.calculate_time(arg[2], arg[3])).to eq(30)
    end
  end

  describe "#trip_speed" do
    it "calculates the speed of each trip" do
      expect(trip.trip_speed).to eq(37)
    end
  end

  describe "#find_driver" do
    it "accepts a drivers name as a string and either finds the instance of the driver or creates a new driver" do
      expect(trip.driver.name).to eq(driver.name)
    end
  end

  describe "#miles_driven" do
    it "accepts the number of miles driven and converts it from a string to a float" do
      expect(trip.miles_driven).to eq(18.3)
    end

  end

end
