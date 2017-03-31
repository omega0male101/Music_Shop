require_relative('../db/sql_runner')

class Genre
  attr_reader :id
  attr_accessor :type

  def initialize(options)
    @type = options['type']
    @id = options['id'].to_i
  end


  def save()
    sql = "INSERT INTO genres (type) VALUES ('#{@type}') RETURNING *;"
    genre_data = SqlRunner.run(sql)
    @id = genre_data.first()['id']
  end

  def delete()
    sql = "DELETE FROM genres WHERE id = #{ @id}"
    result = SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM genres;"
    result = Genre.map_items(sql)
  end

  def self.map_items(sql)
    genres = SqlRunner.run(sql)
    result = genres.map {|genre| Genre.new(genre)}
    return result
  end

  def self.delete_all
    sql = "DELETE FROM genres"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM genres WHERE id = #{id};"
    result = Genre.map_items(sql)
  end

end