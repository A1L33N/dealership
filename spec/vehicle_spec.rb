require('rspec')
require('vehicle')

describe('Vehicle') do
  before() do
    @test_car = Vehicle.new('Ford', 'Escape', 2013)
  end
  describe '#make' do
    it('it returns the make of the car') do
      expect(@test_car.make).to eq 'Ford'
    end
  end

  describe '#model' do
    it('returns the model of the car') do
      expect(@test_car.model).to eq 'Escape'
    end
  end

  describe '#year' do
    it('returns the year of the car') do
      expect(@test_car.year).to eq 2013
    end
  end
end
