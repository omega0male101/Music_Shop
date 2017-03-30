require_relative('../db/sql_runner')

class Genre
  attr_reader :id
  attr_accessor :type

  def initialize(options)
    @type = options['type']
    @id = options['id'].to_i
  end
end

def save()
  sql = "INSERT INTO genres (type) VALUES ('#{@type}') RETURNING *;"
  genre_data = SqlRunner.run(sql)
  @id = genre_data.first()['id']
end