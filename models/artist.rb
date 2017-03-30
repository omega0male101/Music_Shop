require_relative('../db/sql_runner')

class Artist
  attr_reader :id
  attr_accessor :name, :bio

  def initialize(options)
    @name = options['name']
    @bio = options['bio']
    @id = options['id'].to_i
  end

  def save()
    sql = "INSERT INTO artists (name, bio) VALUES ('#{@name}', '#{@bio}') RETURNING *;"
    artist_data = SqlRunner.run(sql)
    @id = artist_data.first()['id']
  end

  def self.all()
    sql = "SELECT * FROM artists;"
    result = Artist.map_items(sql)
  end

  def self.all_names()
    sql = "SELECT name FROM artists;"
    result = Artist.map_items(sql)
  end

  def self.map_items(sql)
    artists = SqlRunner.run(sql)
    result = artists.map {|artist| Artist.new(artist)}
    return result
  end

  def self.delete_all
    sql = "DELETE FROM artists"
    SqlRunner.run(sql)
  end

end


