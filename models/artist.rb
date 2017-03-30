require_relative('../db/sql_runner')

class Artist
  attr_reader :id
  attr_accessor :name, :bio

  def initialize(options)
    @name = options['name']
    @bio = options['bio']
    @id = options['id'].to_i
  end
end

def save()
  sql = "INSERT INTO artists (name, bio) VALUES ('#{@name}', '#{@bio}') RETURNING *;"
  artist_data = SqlRunner.run(sql)
  @id = artist_data.first()['id']
end
