require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/places')
require('pry')

get('/')  do
  @places= Places.p_array()
  erb(:index)
end

post("/places") do
  place_input= params.fetch("place_input")
  newplace= Places.new(place_input)
  newplace.save()
  erb(:results)
end
