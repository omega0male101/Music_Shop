require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/album')
require_relative('../models/artist')
require_relative('../models/genre')



get '/' do
  @albums = Student.all()
  erb(:index)
end


get '/albums' do
  @albums = Student.all()
  erb(:albums)
end


get '/albums/new' do
  @artists = House.all()
  erb(:new_student)
end

post '/albums' do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end

get '/artists' do
  @artists = Artist.all
  erb(:artists)
end

get  '/artists/new' do
  erb(:new_artist)
end

post '/artists' do
  @artist = Artist.new(params)
  @artist.save()
  erb(:create_artist)
end
