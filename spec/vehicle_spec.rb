require('rspec')
require('vehicle')
require('pry')

describe('Vehicle') do
  before() do
    Vehicle.clear
  end

  describe '#make' do
    it('it returns the make of the car') do
      test_car = Vehicle.new('Ford', 'Escape', 2013)
      expect(test_car.make).to eq 'Ford'
    end
  end

  describe '#model' do
    it('returns the model of the car') do
      test_car = Vehicle.new('Ford', 'Escape', 2013)
      expect(test_car.model).to eq 'Escape'
    end
  end

  describe '#year' do
    it('returns the year of the car') do
      test_car = Vehicle.new('Ford', 'Escape', 2013)
      expect(test_car.year).to eq 2013
    end
  end

  describe '#save' do
    it 'saves the car into an array of cars' do
      test_car = Vehicle.new('Ford', 'Escape', 2013)
      expect(test_car.save).to eq ([test_car])
    end
  end

  describe '.all' do
    it 'is initialized to empty' do
      expect(Vehicle.all).to eq []
    end
  end

  describe '.clear' do
    it 'empties out the list of saved cars' do
      Vehicle.clear
      expect(Vehicle.all).to eq []
    end
  end

  describe '#age' do
    it 'returns the age of the vehicle' do
      test_car = Vehicle.new('Ford', 'Escape', 2013)
      expect(test_car.age).to eq 2
    end
  end

  describe '#id' do
    it 'returns the id of a car' do
      test_car = Vehicle.new('Ford', 'Escape', 2013)
      test_car.save
      expect(test_car.id).to eq 1
    end
  end

  describe '.find' do
    it 'returns the car by the id number' do
      test_car = Vehicle.new('Ford', 'Escape', 2013)
      test_car.save
      test_car2 = Vehicle.new('Honda', 'Civic', 2005)
      test_car2.save

      expect(Vehicle.find(2)).to eq(test_car2)
    end
  end
end
