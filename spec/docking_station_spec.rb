require 'docking_station'

RSpec.describe DockingStation do
  describe 'when called' do
    it {is_expected.to respond_to(:release_bike)}
  end

    it "release_bike creates a new bike object" do
      expect(subject.release_bike).to be_instance_of(Bike)
    end

    it "When new bike object created checks the bike is working" do
      expect(subject.release_bike).to be_working
    end
end
