require 'docking_station'

RSpec.describe DockingStation do

    it {is_expected.to respond_to(:release_bike)}

    it "release_bike creates a new bike object" do
      expect(subject.release_bike).to be_instance_of(Bike)
    end

    it "When new bike object created checks the bike is working" do
      expect(subject.release_bike).to be_working
    end

    it {is_expected.to respond_to(:dock).with(1).argument}

    it "expects a bike to be docked" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq (bike)
    end

    it {is_expected.to respond_to(:bike)}

end
