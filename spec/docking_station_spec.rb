require 'docking_station'

RSpec.describe DockingStation do

    it {is_expected.to respond_to(:release_bike)}

    it "release_bike returns an existing bike object" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to be_instance_of(Bike)
    end

    it "When new bike object created checks the bike is working" do
      expect(Bike.new).to be_working
    end

    it {is_expected.to respond_to(:dock).with(1).argument}

    it "expects a bike to be docked" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq (bike)
    end

    it {is_expected.to respond_to(:bike)}

    it "release_bikes raises an error when no bikes available" do
      expect {(subject.release_bike)}.to raise_error("No bikes available")
    end

end
