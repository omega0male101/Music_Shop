require_relative('../db/sql_runner')

class Album
  attr_reader :id
  attr_accessor :name, :bio

  def initialize(options)
    @name = options['name']
    @bio = options['bio']
    @id = options['id'].to_i
  end
end