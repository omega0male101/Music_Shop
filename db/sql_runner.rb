require( 'pg' )

class SqlRunner

  def self.run( sql )
    begin
      # db = PG.connect({ dbname: 'music_shop', host: 'localhost' })
      db = PG.connect({dbname: 'd7sir27q68q412', 
host: 'ec2-54-163-234-20.compute-1.amazonaws.com', 
port: 5432, user: 'edenstevens101+heroku@gmail.com', password: 'Qwerty123'})
      result = db.exec( sql )
    ensure
      db.close
    end
    return result
  end

end
