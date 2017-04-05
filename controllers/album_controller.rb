require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/album')
require_relative('../models/artist')
require_relative('../models/genre')


get '/albums' do
  @albums = Album.all
  @albums_title = Album.all_title
  @albums_sold = Album.all_sold
  @albums_quantity = Album.all_quantity
  @albums_price = Album.all_price
  @top_seller = Album.top_seller
  erb(:'album/albums')
end

get '/albums/gallery' do
  @albums = Album.all
  @total_sales = Album.sold_amount()
  @current_stock = Album.current_stock()
  erb(:'album/gallery', :layout => false)
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

get  '/albums/:id/delete' do
  @album = Album.find(params[:id])
  @genres = Genre.all
  @artists = Artist.all
  @artist = Artist.find(@album.artist_id).first
  erb(:'album/delete')
end

get '/albums/:id/edit' do
 @album = Album.find(params[:id])
 @genres = Genre.all
 @artist = Artist.find(@album.artist_id).first
 @artists = Artist.all
 erb(:"album/edit")
end

post '/albums/:id/delete' do
  @album = Album.find(params[:id])
  @album.delete_full()
  erb(:'album/delete')
end

post '/albums/:id/sell' do
  @album = Album.find(params[:id])
  @album.sell()
  redirect to("/albums")
end


post '/albums/:id' do

 @album = Album.new(params)
 @album.update()
 redirect to("/albums")
end
