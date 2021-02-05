class Song 
  
  attr_accessor:name, :artist
  @@all = []
  @@songs = []
  
  def artist_name=(artist)
    found_artist = Song.all.find {|artist| name == artist.name}
    if found_artist
    return found_artist
  else
    name = Artist.new(name) 
  end
  
  end
  
  def initialize(name)
    @name = name
    @@songs << self
    save
  end
  
  def save 
    @@all << self
  end
  
  def self.all 
  @@all 
  end
  
  def self.new_by_filename(name)
    artist_name = name.split(" - ")[0]
    song_name = name.split(" - ")[1]
    new_artist = Artist.find_or_create_by_name(artist_name)
    new_song = Song.new(song_name)
    new_song.artist = new_artist
    new_song
  end
  
  
end