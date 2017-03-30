require_relative('../db/sql_runner')

class Album
  attr_reader :id
  attr_accessor :title, :artist_id, :album_id, :artwork, :quantity

  def initialize(options)
    @title = options['title']
    @artwork = options['artwork']
    @artist_id = options['artist_id'].to_i
    @genre_id = options['genre_id'].to_i
    @quantity = options['quantity'].to_i
    @id = options['id'].to_i
  end


  def save()
    sql = "INSERT INTO albums (title, artwork, artist_id,   genre_id, quantity) VALUES ('#{@title}', '#{@artwork  }', '#{@artist_id}', '#{@genre_id}', '#{@quantity}  ',) RETURNING *;"
    album_data = SqlRunner.run(sql)
    @id = album_data.first()['id']
  end
  
  def self.delete_all
    sql = "DELETE FROM albums"
    SqlRunner.run(sql)
  end

end  