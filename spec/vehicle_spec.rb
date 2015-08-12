require('rspec')
require('vehicle')

describe('Vehicle') do
  describe '#make' do
    it('it returns the make of the car') do
      test_car = Vehicle.new('Ford', 'Escape', 2013)
    end
  end
end
