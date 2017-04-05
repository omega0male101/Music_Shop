require_relative('../models/album')
require_relative('../models/artist')
require_relative('../models/genre')
require('pry-byebug')

  Album.delete_all
  Artist.delete_all
  Genre.delete_all
  # View.delete_all

#--SETTING UP Artists
    artist1 = Artist.new({
      "name" => "David Bowie",
      "bio" => "David Robert Jones (8 January 1947 – 10 January 2016), known professionally as David Bowie was an English singer, songwriter and actor. He was a figure in popular music for over five decades, regarded by critics and musicians as an innovator, particularly for his work in the 1970s. His first hit was the song Space Oddity in 1969. The original pop chameleon, Bowie became a fantastical sci-fi character for his breakout Ziggy Stardust album."


      })

    artist2 = Artist.new({
      "name" => "Moby",
      "bio" => "Born in New York City in 1965, Moby is an electronic singer-songwriter known for such popular songs as Go, Natural Blues and Porcelain, and albums like Everything is Wrong, Animal Rights and Play. He released his ninth studio album, Wait for Me, in 2013. Richard Melville Hall better known by his stage name Moby, is an American DJ, singer, songwriter, musician, photographer and animal rights activist. He is well known for his electronic music, veganism, and support of animal rights."
      })

    artist3 = Artist.new({
      "name" => "The Beatles",
      "bio" => "The Beatles were an English rock band, formed in Liverpool in 1960. With members John Lennon, Paul McCartney, George Harrison and Ringo Starr, they became widely regarded as the foremost and most influential act of the rock era. Rooted in skiffle, beat, and 1950s rock and roll, the Beatles later experimented with several musical styles, ranging from pop ballads and Indian music to psychedelia and hard rock, often incorporating classical elements and unconventional recording techniques in innovative ways."


      })

    artist4 = Artist.new({
      "name" => "The Clash",
      "bio" => "The Clash were an English punk rock band that formed in 1976 as part of the original wave of British punk. Along with punk, their music incorporated elements of reggae, dub, funk, ska and rockabilly. For most of their recording career the Clash consisted of Joe Strummer (lead vocals, rhythm guitar), Mick Jones (lead guitar, lead vocals), Paul Simonon (bass guitar, vocals) and Nicky Topper Headon (drums, percussion). Headon left the group in 1982, and internal friction led to Joness departure the following year. The group continued with new members, but finally disbanded in early 1986."

      })

    artist5 = Artist.new({
      "name" => "Creedence",
      "bio" => "Creedence Clearwater Revival, often informally abbreviated to Creedence or CCR, was an American rock band active in the late 1960s and early 1970s. The band consisted of lead vocalist, lead guitarist, and primary songwriter John Fogerty, his brother rhythm guitarist Tom Fogerty, bassist Stu Cook and drummer Doug Clifford. Their musical style encompassed the roots rock, swamp rock, and blues rock genres. Despite their San Francisco Bay Area origins, they played in a Southern rock style, with lyrics about bayous, catfish, the Mississippi River, and other popular elements of Southern United States "

      })

    artist6 = Artist.new({
      "name" => "Bob Dylan",
      "bio" => "Bob Dylan is an American songwriter, singer, painter, and writer. He has been influential in popular music and culture for more than five decades. Much of his most celebrated work dates from the 1960s, when his songs chronicled social unrest. Early songs such as Blowin in the Wind and The Times They Are a-Changin became anthems for the Civil Rights Movement and anti-war movement."

    
      })

    artist7 = Artist.new({
      "name" => "The Beach Boys",
      "bio" => "The Beach Boys are an American rock band formed in Hawthorne, California in 1961. The groups original lineup consisted of brothers Brian, Dennis, and Carl Wilson, their cousin Mike Love, and their friend Al Jardine. Distinguished by their vocal harmonies and early surf songs, they are one of the most influential acts of the rock era. The group, led by their principal songwriter and producer Brian, pioneered novel approaches to popular music form and production, combining their affinities for jazz-based vocal groups, 1950s rock and roll, and black R&B to create their unique sound."

    
      })

    artist8 = Artist.new({
      "name" => "Artic Monkeys",
      "bio" => "Arctic Monkeys are an English rock band formed in 2002 in High Green, a suburb of Sheffield. The band consists of Alex Turner (lead vocals, rhythm/lead guitar), Matt Helders (drums, vocals), Jamie Cook (lead/rhythm guitar) and Nick OMalley (bass, backing vocals). Former band member Andy Nicholson (bass guitar, backing vocals) left the band in 2006 shortly after their debut album was released."

    
      })

  artist1.save
  artist2.save
  artist3.save
  artist4.save
  artist5.save
  artist6.save
  artist7.save
  artist8.save


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
      "type" => "Punk Rock"
      })
    genre4 = Genre.new({
      "type" => "Jazz"
      })
    genre5 = Genre.new({
      "type" => "Reggae"
      })
    genre6 = Genre.new({
      "type" => "Folk Music"
      })
    genre7 = Genre.new({
      "type" => "Hip Hop"
      })
    genre8 = Genre.new({
      "type" => "Country Music"
      })
    genre9 = Genre.new({
      "type" => "Techo"
      })
    genre10 = Genre.new({
      "type" => "Funk"
      })
    genre11 = Genre.new({
      "type" => "Pop"
      })

  genre0.save
  genre1.save
  genre2.save
  genre3.save
  genre4.save
  genre5.save
  genre6.save
  genre7.save
  genre8.save
  genre9.save
  genre10.save
  genre11.save

  # view = View.new({"sort" => "default"})
  # view.save



#--SETTING UP ALBUMS
    album1 = Album.new({
      "title" => "Rise and Fall of Ziggy Stardust",
      "genre_id" => genre2.id,
      "artist_id" => artist1.id,
      "quantity" => 7,
      "price" => 9,
      "sold" => 5,
      "artwork" => "/images/album_covers/ziggy.jpg"
      
      })

    album2 = Album.new({
      "title" => "Changes",
      "genre_id" => genre2.id,
      "artist_id" => artist1.id,
      "quantity" => 6,
      "price" => 7,
      "sold" => 5,
      "artwork" => "/images/album_covers/changes.jpg"
      })

    album3 = Album.new({
      "title" => "Play",
      "genre_id" => genre1.id,
      "artist_id" => artist2.id,
      "quantity" => 5,
      "price" => 8,
      "sold" => 5,
      "artwork" => "/images/album_covers/play.jpg"
      })

    album4 = Album.new({
      "title" => "London Calling",
      "genre_id" => genre2.id,
      "artist_id" => artist4.id,
      "quantity" => 9,
      "price" => 10,
      "sold" => 2,
      "artwork" => "/images/album_covers/london.jpg"
      })

    album5 = Album.new({
      "title" => "White Album",
      "genre_id" => genre2.id,
      "artist_id" => artist3.id,
      "quantity" => 7,
      "price" => 14,
      "sold" => 8,
      "artwork" => "/images/album_covers/white_album.jpg"
      })

    album6 = Album.new({
      "title" => "The Best of Creedence Clearwater Revival",
      "genre_id" => genre8.id,
      "artist_id" => artist5.id,
      "quantity" => 8,
      "price" => 9,
      "sold" => 2,
      "artwork" => "/images/album_covers/ccr.jpg"
      })

    album7 = Album.new({
      "title" => "Sgt Peppers Lonely Hearts Club Band",
      "genre_id" => genre2.id,
      "artist_id" => artist3.id,
      "quantity" => 2,
      "price" => 15,
      "sold" => 2,
      "artwork" => "/images/album_covers/SgtPepper.jpg"
      })

    album8 = Album.new({
      "title" => "Pet Sounds",
      "genre_id" => genre3.id,
      "artist_id" => artist7.id,
      "quantity" => 3,
      "price" => 7,
      "sold" => 4,
      "artwork" => "/images/album_covers/petsounds.jpg"
      })

    album9 = Album.new({
      "title" => "AM",
      "genre_id" => genre2.id,
      "artist_id" => artist8.id,
      "quantity" => 7,
      "price" => 7,
      "sold" => 1,
      "artwork" => "/images/album_covers/am.jpg"
      })

    album10 = Album.new({
      "title" => "Go",
      "genre_id" => genre1.id,
      "artist_id" => artist2.id,
      "quantity" => 5,
      "price" => 8,
      "sold" => 5,
      "artwork" => "/images/album_covers/go.jpg"
      })

    album11 = Album.new({
      "title" => "Pin Ups",
      "genre_id" => genre2.id,
      "artist_id" => artist1.id,
      "quantity" => 7,
      "price" => 9,
      "sold" => 8,
      "artwork" => "/images/album_covers/pinups.jpg"
      })

    album12 = Album.new({
      "title" => "Best of Dylan",
      "genre_id" => genre2.id,
      "artist_id" => artist6.id,
      "quantity" => 7,
      "price" => 7,
      "sold" => 1,
      "artwork" => "/images/album_covers/bestofdylan.jpg"
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
  album12.save

nil
