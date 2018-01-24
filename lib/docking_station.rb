require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    raise("No bikes available") if @bike == nil
    @bike
  end

  def dock(bike)
    raise ("Docking station full") if @bike != nil
    @bike = bike
  end

end
