class Dealership
  @@dealerships = []

  attr_reader :name
  define_method(:initialize) do |name|
    @name = name
  end

  define_singleton_method(:all) do
    @@dealerships
  end

  define_method(:save) do
    @@dealerships.push(self)
  end

  define_singleton_method(:clear) do
    @@dealerships = []
  end
end
