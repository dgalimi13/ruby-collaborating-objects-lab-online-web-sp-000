class Song 
  
  attr_accessor:name, :artist
  @@all = []
  @@songs = []
  
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
    Artist.find_or_create_by_name
  end
  
end