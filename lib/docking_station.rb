require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    @bike = Bike.new
    raise("No bikes available") if @bike == nil
  end

  def dock(bike)
    @bike = bike
  end

end
