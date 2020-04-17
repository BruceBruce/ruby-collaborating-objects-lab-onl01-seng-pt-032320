class Artist 
  
  @@all = []
  
 
  
  attr_accessor :name, :artist, :songs
  
  def initialize(name)
    @name =name
    @@all << self 
    @songs = []
  end
  
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
    self
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    song
  end
  
  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.new(name)
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end
  
  def print_songs
    self.songs.each {|song| puts song.name} 
   end
  
end
