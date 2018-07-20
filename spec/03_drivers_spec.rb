require "spec_helper"

describe "Driver" do
  let(:driver) { DriversProblem::Driver.new("Kelly") }

  describe "#initialize" do
    it "accepts a name for the new driver" do
      new_driver = DriversProblem::Driver.new("Alison")

      new_driver_name = new_driver.instance_variable_get(:@name)

      expect(new_driver_name).to eq("Alison")
    end
  end

  describe "#name" do
    it "retrieves the name of a driver" do
      expect(driver.name).to eq("Kelly")
    end
  end

  describe "#name=" do
    it "can set the name of a driver" do
      driver.name = "Joe"

      driver_name = driver.instance_variable_get(:@name)

      expect(driver_name).to eq("Joe")
    end
  end

  describe "@@all" do
    it "is initialized as an empty array" do
      all = DriversProblem::Driver.class_variable_get(:@@all)

      expect(all).to match_array([])
    end
  end

  describe ".all" do
    it "returns the class variable @@all" do
      expect(DriversProblem::Driver.all).to match_array([])

      DriversProblem::Driver.class_variable_set(:@@all, [driver])

      expect(DriversProblem::Driver.all).to match_array([driver])
    end
  end

end
