require('sinatra')
require('sinatra/reloader')
require('./lib/rectangle')
also_reload('.lib/**/*,rb')

get('/') do
  erb(:index)
end

get('/success') do
length = params.fetch('length').to_i
width = params.fetch('width').to_i
@rectangle = Rectangle.new(length, width)
@result = @rectangle.square?
erb(:success)
end

end
