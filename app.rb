require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/album')
require_relative('./models/artist')
require_relative('./models/genre')
require_relative('./controllers/album_controller')
require_relative('./controllers/artist_controller')



get '/' do
  @total_sales = Album.sold_amount()
  @current_stock = Album.current_stock()
  @albums = Album.low_stock()
  @albums_list = Album.all()
  @top_seller = Album.top_seller
  erb( :index )
end