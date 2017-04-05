require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/artist')

get '/artists' do
  @artists = Artist.all()
  erb(:'artist/artists')
end

get '/artists/new' do
  @artists = Artist.all()
  erb(:'artist/new_artist')
end

post '/artists' do
  @artist = Artist.new(params)
  @artist.save()
  erb(:'artist/create')
end