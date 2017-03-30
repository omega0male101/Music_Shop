require_relative('../models/album')
require_relative('../models/artist')
require('pry-byebug')

  Album.delete_all
  Artist.delete_all
  Genre.delete_all

    artist1 = Artist.new({
      "name" => "David Bowie",
      "bio" => "David Bowie was born in South Londons Brixton neighborhood on January 8, 1947. His first hit was the song Space Oddity in 1969. The original pop chameleon, Bowie became a fantastical sci-fi character for his breakout Ziggy Stardust album."
      })

    artist2 = Artist.new({
      "name" => "Moby",
      "bio" => "Born in New York City in 1965, Moby is an electronic singer-songwriter known for such popular songs as 'Go,'' 'Natural Blues' and 'Porcelain, and albums like Everything is Wrong, Animal Rights and Play. He released his ninth studio album, Wait for Me, in 2013."
      })

  artist1.save
  artist2.save

    album1 = Album.new({
      "title" => "Rise and Fall of Ziggy Stardust",
      "genre_id" => genre2.id,
      "artist_id" => artist1.id,
      "quantity" => 7,
      "artwork" => "FILL IN URL LATER"
      })

    album2 = Album.new({
      "title" => "Changes",
      "genre_id" => genre2.id,
      "artist_id" => artist1.id,
      "quantity" => 6,
      "artwork" => "FILL IN URL LATER"
      })

    album3 = Album.new({
      "title" => "Play",
      "genre_id" => genre1.id,
      "artist_id" => artist2.id,
      "quantity" => 5,
      "artwork" => "FILL IN URL LATER"
      })

  album1.save
  album2.save
  album3.save

    genre1 = Genre.new({
      "type" => "Electronic"
      })

    genre2 = Genre.new({
      "type" => "Rock"
      })

  genre1.save
  genre2.save

binding.pry
nil
