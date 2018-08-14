class Artist 
  attr_accessor :name
  @@all = []
  extend Concerns::Findable
  extend Concerns::Persistable::ClassMethods
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def self.all 
    @@all
  end
  
  
  
  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end 
  
  def songs 
    @songs
  end 
  
  def add_song(song)
    @songs << song unless self.songs.include?(song)
    song.artist = self if song.artist == nil
  end 
  
  def genres 
    self.songs.collect {|s| s.genre}.uniq
  end 
end 