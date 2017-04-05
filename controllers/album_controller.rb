require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/album')
require_relative('../models/artist')
require_relative('../models/genre')


get '/albums' do
  @albums = Album.all
  @top_seller = Album.top_seller
  erb(:'album/albums')
end

  get '/albums/price' do
    @albums = Album.all_price
    @top_seller = Album.top_seller
    erb(:'album/albums')
  end

  get '/albums/title' do
    @albums = Album.all_title
    @top_seller = Album.top_seller
    erb(:'album/albums')
  end

  get '/albums/sold' do
    @albums = Album.all_sold
    @top_seller = Album.top_seller
    erb(:'album/albums')
  end

  get '/albums/stock' do
    @albums = Album.all_quantity
    @top_seller = Album.top_seller
    erb(:'album/albums')
  end

  get '/albums/artist' do
    @albums = Album.all  
    @albums.sort_by! {|album| album.artist().name }

    @top_seller = Album.top_seller
    erb(:'album/albums')    
  end

  get '/albums/genre' do
    @albums = Album.all  
    @albums.sort_by! {|album| album.genre().type }
    @top_seller = Album.top_seller
    erb(:'album/albums')    
  end

    get '/albums/gallery' do
      @albums = Album.all
      @total_sales = Album.sold_amount()
      @current_stock = Album.current_stock()
      erb(:'album/gallery')
    end

    get '/albums/gallery/title' do
      @albums = Album.all_title
      @top_seller = Album.top_seller
      erb(:'album/gallery')
    end

    get '/albums/gallery/stock' do
      @albums = Album.all_quantity
      @top_seller = Album.top_seller
      erb(:'album/gallery')
    end

    get '/albums/gallery/artist' do
      @albums = Album.all  
      @albums.sort_by! {|album| album.artist().name }

      @top_seller = Album.top_seller
      erb(:'album/gallery')    
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
  redirect to(  request.referer )
end

post '/albums/:id/sell' do
  @album = Album.find(params[:id])
  @album.sell()
  # request.referer
  redirect to(  request.referer )
end

post '/albums/:id' do

 @album = Album.new(params)
 @album.update()
 redirect to("/albums")
end
