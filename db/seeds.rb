require_relative('../models/album')
require_relative('../models/artist')
require_relative('../models/genre')
require('pry-byebug')

  Album.delete_all
  Artist.delete_all
  Genre.delete_all

#--SETTING UP Artists
    artist1 = Artist.new({
      "name" => "David Bowie",
      "bio" => "David Bowie was born in South Londons Brixton neighborhood on January 8, 1947. His first hit was the song Space Oddity in 1969. The original pop chameleon, Bowie became a fantastical sci-fi character for his breakout Ziggy Stardust album."
      })

    artist2 = Artist.new({
      "name" => "Moby",
      "bio" => "Born in New York City in 1965, Moby is an electronic singer-songwriter known for such popular songs as Go, Natural Blues and Porcelain, and albums like Everything is Wrong, Animal Rights and Play. He released his ninth studio album, Wait for Me, in 2013."
      })

    artist3 = Artist.new({
      "name" => "The Beatles",
      "bio" => "The Beatles were an English rock band, formed in Liverpool in 1960. With members John Lennon, Paul McCartney, George Harrison and Ringo Starr, they became widely regarded as the foremost and most influential act of the rock era."
      })

    artist4 = Artist.new({
      "name" => "The Clash",
      "bio" => "The Clash were an English punk rock band that formed in 1976 as part of the original wave of British punk. Along with punk, their music incorporated elements of reggae, dub, funk, ska and rockabilly. For most of their recording career the Clash consisted of Joe Strummer (lead vocals, rhythm guitar), Mick Jones (lead guitar, lead vocals), Paul Simonon (bass guitar, vocals) and Nicky Topper Headon (drums, percussion)."
      })

    artist5 = Artist.new({
      "name" => "The Beach Boys",
      "bio" => "The Beach Boys are an American rock band formed in Hawthorne, California in 1961. The groups original lineup consisted of brothers Brian, Dennis, and Carl Wilson, their cousin Mike Love, and their friend Al Jardine. Distinguished by their vocal harmonies and early surf songs, they are one of the most influential acts of the rock era."
      })

    artist6 = Artist.new({
      "name" => "Bob Dylan",
      "bio" => "Bob Dylan is an American songwriter, singer, painter, and writer. He has been influential in popular music and culture for more than five decades. Much of his most celebrated work dates from the 1960s, when his songs chronicled social unrest."
      })

  artist1.save
  artist2.save
  artist3.save
  artist4.save
  artist5.save
  artist6.save


#--SETTING UP GENRES
    genre0 = Genre.new({
      "type" => " - "
      })

    genre1 = Genre.new({
      "type" => "Electronic"
      })

    genre2 = Genre.new({
      "type" => "Rock"
      })

    genre3 = Genre.new({
      "type" => "Rock/Folk"
      })

  genre0.save
  genre1.save
  genre2.save
  genre3.save


#--SETTING UP ALBUMS
    album1 = Album.new({
      "title" => "Rise and Fall of Ziggy Stardust",
      "genre_id" => genre2.id,
      "artist_id" => artist1.id,
      "quantity" => 7,
      "price" => 9,
      "sold" => 5,
      "artwork" => "http://www.davidbowie.com/sites/g/files/g2000002506/f/styles/large/public/201302/1972_ziggy_cvr_fix_800sq.jpg"
      
      })

    album2 = Album.new({
      "title" => "Changes",
      "genre_id" => genre2.id,
      "artist_id" => artist1.id,
      "quantity" => 6,
      "price" => 7,
      "sold" => 5,
      "artwork" => "FILL IN URL LATER"
      })

    album3 = Album.new({
      "title" => "Play",
      "genre_id" => genre1.id,
      "artist_id" => artist2.id,
      "quantity" => 5,
      "price" => 8,
      "sold" => 5,
      "artwork" => "FILL IN URL LATER"
      })

    album4 = Album.new({
      "title" => "London Calling",
      "genre_id" => genre2.id,
      "artist_id" => artist4.id,
      "quantity" => 9,
      "price" => 10,
      "sold" => 2,
      "artwork" => "FILL IN URL LATER"
      })

    album5 = Album.new({
      "title" => "White Album",
      "genre_id" => genre2.id,
      "artist_id" => artist3.id,
      "quantity" => 7,
      "price" => 14,
      "sold" => 8,
      "artwork" => "FILL IN URL LATER"
      })

    album6 = Album.new({
      "title" => "Abbey Road",
      "genre_id" => genre2.id,
      "artist_id" => artist3.id,
      "quantity" => 8,
      "price" => 9,
      "sold" => 2,
      "artwork" => "FILL IN URL LATER"
      })

    album7 = Album.new({
      "title" => "Sgt Peppers Lonely Hearts Club Band",
      "genre_id" => genre2.id,
      "artist_id" => artist3.id,
      "quantity" => 2,
      "price" => 15,
      "sold" => 2,
      "artwork" => "FILL IN URL LATER"
      })

    album8 = Album.new({
      "title" => "Best Of Dylan",
      "genre_id" => genre3.id,
      "artist_id" => artist6.id,
      "quantity" => 3,
      "price" => 7,
      "sold" => 4,
      "artwork" => "FILL IN URL LATER"
      })

    album9 = Album.new({
      "title" => "Pet Sounds",
      "genre_id" => genre2.id,
      "artist_id" => artist5.id,
      "quantity" => 7,
      "price" => 7,
      "sold" => 1,
      "artwork" => "FILL IN URL LATER"
      })

    album10 = Album.new({
      "title" => "Go",
      "genre_id" => genre1.id,
      "artist_id" => artist2.id,
      "quantity" => 5,
      "price" => 8,
      "sold" => 5,
      "artwork" => "FILL IN URL LATER"
      })

    album11 = Album.new({
      "title" => "Pin Ups",
      "genre_id" => genre2.id,
      "artist_id" => artist1.id,
      "quantity" => 7,
      "price" => 9,
      "sold" => 8,
      "artwork" => "FILL IN URL LATER"
      })

  album1.save
  album2.save
  album3.save
  album4.save
  album5.save
  album6.save
  album7.save
  album8.save
  album9.save
  album10.save
  album11.save



nil
