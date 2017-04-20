require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coin') do
  @coin = (params.fetch('coin_form').to_i).cc()
  erb(:coin)
end
