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

  def delete()
    sql = "UPDATE albums SET artist_id = null WHERE artist_id = #{ @id }; DELETE FROM artists WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def delete_full()
    sql = "DELETE FROM artists WHERE id = #{ @id}"
    result = SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE artists SET
      name = '#{ @name }',
      bio = '#{ @bio }'
      WHERE id = '#{ @id }';"
    result = SqlRunner.run(sql)
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

  def self.find(id)
    sql = "SELECT * FROM artists WHERE id = #{id};"
    result = Artist.map_items(sql)
  end

end


