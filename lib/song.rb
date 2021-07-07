class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    @name = name
    @artist = artist
    @genre = genre
  end

  
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
    genre_names = {}
    @@genres.each do |genre|
      if genre_names.has_key?(genre)
        genre_names[genre] += 1
      else 
        genre_names[genre] = 1
      end
    end
    genre_names 
  end

def self.artist_count
    artist_names = {}
    @@artists.each do |artist|
      if artist_names.has_key?(artist)       
        artist_names[artist] += 1
      else 
        artist_names[artist] = 1
      end
    end
    artist_names 
  end
end
