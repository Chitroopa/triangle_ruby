require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do
  side1 = params.fetch('side1').to_i
  side2 = params.fetch('side2').to_i
  side3 = params.fetch('side3').to_i
  @output_message = Triangle.new(side1, side2, side3).triangle_type()
  erb(:result)
end
