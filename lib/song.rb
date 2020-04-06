class Song 
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.list_of_filenames(filename)
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end
  
  def self.all 
    @@all
  end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name 
    end
  end
  
end
    