require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/album')
require_relative('./models/artist')
require_relative('./models/genre')
require_relative('./controllers/album_controller')
require_relative('./controllers/artist_controller')


get '/' do
  @artists = Artist.all
  erb( :index )
end