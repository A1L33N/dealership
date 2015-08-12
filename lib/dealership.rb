class Dealership
  @@dealerships = []

  attr_reader :name, :id
  define_method(:initialize) do |name|
    @name = name
    @id = @@dealerships.length + 1
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

  define_singleton_method(:find) do |id_number|
    @@dealerships.each() do |dealership|
      if dealership.id == id_number
        return dealership
      end
    end
  end
end
