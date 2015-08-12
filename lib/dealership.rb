class Dealership
  @@dealerships = []

  attr_accessor :name, :id, :cars
  define_method(:initialize) do |name|
    @name = name
    @id = @@dealerships.length + 1
    @cars = []
  end

  define_singleton_method(:all) do
    @@dealerships
  end

  define_method(:save) do
    @@dealerships.push(self)
  end

  # define_method(:cars) do
  #   @cars
  # end

  define_singleton_method(:clear) do
    @@dealerships = []
  end

  define_singleton_method(:find) do |id_number|
    @@dealerships.each() do |dealership|
      if dealership.id == id_number
        return dealership
      end
    end
  end

  define_method(:add_vehicle) do |car|
    @cars.push(car)
  end
end
