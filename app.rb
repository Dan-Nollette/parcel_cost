require ('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/parcels')

get('/') do
  erb( :input)
end

get('/output')do
  @length = params.fetch("length").to_i
  @width = params.fetch("width").to_i
  @height = params.fetch("height").to_i
  @weight = params.fetch("weight").to_i
  parcel = Parcels.new(@length, @width, @height, @weight)
  @string_to_display = parcel.cost_to_ship
  erb(:output)
end
