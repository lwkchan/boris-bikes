require 'docking_station'

RSpec.describe DockingStation do

    bike = Bike.new

    describe '#release_bike' do

      it {is_expected.to respond_to(:release_bike)}

      it "returns an existing bike object" do
        subject.dock(bike)
        expect(subject.release_bike).to be_instance_of(Bike)
      end

      it "raises an error when no bikes available" do
        expect {(subject.release_bike)}.to raise_error("No bikes available")
      end
    end

    it "When new bike object created checks the bike is working" do
      expect(bike).to be_working
    end

    describe '#dock' do
      it {is_expected.to respond_to(:dock).with(1).argument}

      it "expects a bike to be docked" do
        expect(subject.dock(bike)).to eq ([bike])
      end

      it {is_expected.to respond_to(:bikes)}

      it "raises an error when docking station is full" do
        DEFAULT_CAPACITY.times {subject.dock(bike)}
        expect {subject.dock(bike)}.to raise_error("Docking station full")
      end
    end

end
