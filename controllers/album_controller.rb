
require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/album')
require_relative('../models/artist')
require_relative('../models/genre')


get '/albums' do
  @albums = Album.all
  erb(:'album/albums')
end

get  '/albums/new' do
  @genres = Genre.all
  @artists = Artist.all
  erb(:'album/new_album')
end

post '/albums' do
  @album = Album.new(params)
  @album.save()
  erb(:'album/create')
end

post '/albums/:id/delete' do
  @album = Album.new(params)
  @album.save()
  erb(:'album/delete')
end


get '/albums/:id/edit' do
 @album = Album.find(params[:id])
 @genres = Genre.all
 @artist = Artist.find(@album.artist_id).first
 @artists = Artist.all
 erb(:"album/edit")
end

post '/albums/:id/edit' do
 @album = Album.new(params)
 @album.update
 redirect to("/albums")
end
