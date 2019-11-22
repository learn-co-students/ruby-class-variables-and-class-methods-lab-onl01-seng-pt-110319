class Song
  @@count = 0
attr_accessor :name, :artists, :genres, :count
def initialize
  @@count+=1
end
def genre_count
  {}
end
def artist_count
  {}
end
end
