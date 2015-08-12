require 'sinatra'
require 'pry'
require './lib/vehicle'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'

get('/') do
  erb(:index)
end

get('/add_vehicle') do
  erb(:add_vehicle)
end

post('/add_vehicle') do
 @car_make = params.fetch('car_make')
 @car_year = params.fetch('car_year').to_i
 @car_model = params.fetch('car_model')
 @new_car = Vehicle.new(@car_make, @car_model, @car_year)
 @new_car.save
 redirect('/')

end

get('/vehicle_list') do

  @@car_list = Vehicle.all
  erb(:vehicle_list)

end

post('/clear') do
  Vehicle.clear
  redirect('/vehicle_list')
end

get('/vehicle/:id') do
  @vehicle = Vehicle.find(params.fetch("id").to_i)
  erb(:vehicle)
end
