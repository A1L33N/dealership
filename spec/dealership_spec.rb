require 'rspec'
require 'dealership'

describe(Dealership) do
  describe '#name' do
    it "will return the name of the dealership" do
      test_dealership = Dealership.new('Used Car for You!')
      expect(test_dealership.name).to eq "Used Car for You!"
    end
  end

  describe '#save' do
    it "saves a dealership to an array of dealerships" do
      test_dealership = Dealership.new('Used Car for You!')
      test_dealership.save
      expect(Dealership.all).to eq([test_dealership])
    end
  end

  describe '#clear' do
    it 'clears list of dealerships in the array' do
      test_dealership = Dealership.new('Used Car for You!')
      test_dealership.save
      Dealership.clear
      expect(Dealership.all).to eq []
    end
  end
end
