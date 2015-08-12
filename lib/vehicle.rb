class Vehicle
  attr_accessor :make, :model, :year
  @@all_cars = []

  define_method(:initialize) do |make, model, year|
    @make = make
    @model = model
    @year = year
  end

  define_method(:save) do
    @@all_cars.push(self)
  end

 end
