require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

get '/error/404' do
  erb(:'error/404', :layout => false)
end