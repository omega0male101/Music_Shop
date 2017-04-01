
require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('/models/album')
require_relative('/models/artist')
require_relative('/models/genre')


get '/' do
  erb( :index )
end


# get '/artists' do
#   @artists = Artist.all()
#   erb(:artists)
# end


# get '/artists/new' do
#   @albums = Ablum.all()
#   erb(:new_artist)
# end

# post '/artists' do
#   @artist = Artist.new(params)
#   @artist.save()
#   erb(:create)
# end

# get '/models/albums' do
#   @albums = Album.all
#   erb(:albums)
# end

# get  '/albums/new' do
#   erb(:new_album)
# end

# post '/albums' do
#   @album = Album.new(params)
#   @album.save()
#   erb(:create_album)
# end

