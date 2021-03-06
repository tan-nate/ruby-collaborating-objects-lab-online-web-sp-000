class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    self.save
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    songs << song
  end
  
  def self.all
    @@all
  end  
  
  def save
    self.class.all << self
  end
  
  def self.find_by_name(name)
    self.all.find{|artist| artist.name == name}
  end
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == nil
      self.new(name)
    else
      self.find_by_name(name)
    end
  end
  
  def print_songs
    songs.each {|song| puts "#{song.name}"}
  end
end