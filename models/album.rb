require_relative('../db/sql_runner')

class Album
  attr_reader :id
  attr_accessor :title, :artist_id, :album_id, :artwork, :quantity, :price

  def initialize(options)
    @title = options['title']
    @artwork = options['artwork']
    @artist_id = options['artist_id'].to_i
    @genre_id = options['genre_id'].to_i
    @quantity = options['quantity'].to_i
    @price = options['price'].to_i
    @id = options['id'].to_i
  end

  def save()
    sql = "INSERT INTO albums (title, artwork, artist_id, genre_id, quantity, price) VALUES ('#{@title}', '#{@artwork  }', '#{@artist_id}', '#{@genre_id}', '#{@quantity}', '#{@price}') RETURNING *;"
    album_data = SqlRunner.run(sql)
    @id = album_data.first()['id']
  end

  def delete()
    sql = "DELETE FROM albums WHERE id = #{ @id}"
    result = SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM albums;"
    result = Album.map_items(sql)
  end

  def self.map_items(sql)
    albums = SqlRunner.run(sql)
    result = albums.map {|album| Album.new(album)}
    return result
  end
  
  def self.delete_all
    sql = "DELETE FROM albums"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM albums WHERE id = #{id};"
    result = Album.map_items(sql)
  end

end  