class Vehicle
  attr_accessor :make, :model, :year
  define_method(:initialize) do |make, model, year|
    @make = make
    @model = model
    @year = year
  end


 end
