require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/roll.rb')
require_relative('./models/die.rb')

require_relative('./controllers/roll_controller.rb')

get '/' do
  redirect to("/roll")
end
