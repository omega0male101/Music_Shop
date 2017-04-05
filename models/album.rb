require_relative('../db/sql_runner')

class Album
  attr_reader :id
  attr_accessor :title, :artist_id, :genre_id, :artwork, :quantity, :price, :sold

  def initialize(options)
    @title = options['title']
    @artwork = options['artwork']
    @artist_id = options['artist_id'].to_i
    @genre_id = options['genre_id'].to_i
    @quantity = options['quantity'].to_i
    @price = options['price'].to_i
    @sold = options['sold'].to_i
    @id = options['id'].to_i
  end

  def save()
    sql = "INSERT INTO albums (title, artwork, artist_id, genre_id, quantity, price, sold) VALUES ('#{@title}', '#{@artwork }', '#{@artist_id}', '#{@genre_id}', '#{@quantity}', '#{@price}', '#{@sold}') RETURNING *;"
    album_data = SqlRunner.run(sql)
    @id = album_data.first()['id']
  end

  def delete_full()
    sql = "DELETE FROM albums WHERE id = #{ @id}"
    result = SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE albums SET
      title = '#{ @title }',
      artwork = '#{ @artwork }',
      artist_id = #{ @artist_id },
      genre_id = #{ @genre_id },
      quantity = #{ @quantity },
      price = #{ @price },
      sold = #{ @sold }
      WHERE id = #{ @id };"
    result = SqlRunner.run(sql)
  end

  def artist
    sql = "SELECT * FROM artists WHERE id = #{@artist_id}"
    result = SqlRunner.run(sql)
    return Artist.new(result.first)
  end

  def genre
    sql = "SELECT * FROM genres WHERE id = #{@genre_id}"
    result = SqlRunner.run(sql)
    return Genre.new(result.first)
  end

  def stock
    sql = "SELECT quantity FROM albums WHERE id = #{id}"
    result = SqlRunner.run(sql).first().values().pop().to_i
  end

  def sell
    sql = "UPDATE albums SET sold = sold + 1 WHERE id = #{@id}; UPDATE albums SET quantity = quantity - 1 WHERE id = #{@id};"
    result = SqlRunner.run(sql)
  end


  def self.top_seller
    sql = "SELECT title FROM albums ORDER BY sold DESC LIMIT 1;"
    result = SqlRunner.run(sql).first().values().pop()
  end


  def self.low_stock
    sql = "SELECT * FROM albums WHERE quantity < 5"
    result = Album.map_items(sql)
  end
  
  def self.sold_amount
    sql = "SELECT SUM(SOLD) FROM albums;"
    result = SqlRunner.run(sql).first().values().pop().to_s
  end

  def self.current_stock
    sql = "SELECT SUM(QUANTITY) FROM albums;"
    result = SqlRunner.run(sql).first().values().pop().to_i
  end

  def self.all()
    sql = "SELECT * FROM albums ORDER BY id;"
    result = Album.map_items(sql)
  end

  def self.all_title()
    sql = "SELECT * FROM albums ORDER BY title;"
    result = Album.map_items(sql)
  end

  def self.all_price()
    sql = "SELECT * FROM albums ORDER BY price;"
    result = Album.map_items(sql)
  end

  def self.all_sold()
    sql = "SELECT * FROM albums ORDER BY sold;"
    result = Album.map_items(sql)
  end

  def self.all_quantity()
    sql = "SELECT * FROM albums ORDER BY quantity;"
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
    result = Album.map_items(sql).first
  end

end  