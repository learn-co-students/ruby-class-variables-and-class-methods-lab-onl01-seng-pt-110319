class Song

  #instance variables
  attr_accessor :name, :artist, :genre

  #class variables
  @@count = 0
  @@artists = []
  @@genres = []

  #class methods
  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = Hash.new
      @@genres.uniq.each { |genre| genre_hash[genre] = @@genres.reduce(0) { |memo, element|
        memo += 1 if element == genre
        memo
      }
    }
    genre_hash
  end

  def self.artist_count
    artist_hash = Hash.new
      @@artists.uniq.each { |artist| artist_hash[artist] = @@artists.reduce(0) { |memo, element|
        memo += 1 if element == artist
        memo
      }
    }
    artist_hash
  end

  def initialize( name, artist, genre )
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists.push( artist )
    @@genres.push( genre )
  end
end
