class Vehicle
  #attr_accessor :make, :model, :year, :id
  @@all_cars = []

  define_method(:initialize) do |make, model, year|
    @make = make
    @model = model
    @year = year
    @id = @@all_cars.length.+(1)
  end

  define_method(:make) do
    @make
  end

  define_method(:save) do
    @@all_cars.push(self)
  end

  define_singleton_method(:all) do
    @@all_cars
  end

  define_singleton_method(:clear) do
    @@all_cars = []
  end

  define_method(:age) do
    current_year = Time.new().year()
    car_age = current_year.-(@year)
  end

  define_singleton_method(:find) do |id_number|
    @@all_cars.each() do |vehicle|
      if vehicle.id == id_number
        return vehicle
      end
    end
  end

end
