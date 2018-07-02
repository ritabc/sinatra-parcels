require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcels')
require('pry')

get('/') do
  erb(:input)
end

get('/output') do
  @length = params.fetch("side_one").to_i
  @width = params.fetch("side_two").to_i
  @height = params.fetch("side_three").to_i
  @weight = params.fetch("parcel_weight").to_i
  parcel = Parcel.new(@height, @length, @width, @weight)
  @volume = parcel.volume
  @charge = parcel.charge

  erb(:output)
end
