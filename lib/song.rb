class Song
  attr_accessor :name :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(file_name)
    name = file_name.split("-")[1].strip
    artist = file_name.split("-")[0].strip
    song = self.new(name)
    song.artist = artist
  end
end