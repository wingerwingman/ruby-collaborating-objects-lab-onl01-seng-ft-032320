class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    files = []
    files = Dir.entries(path)
    
    binding.pry
  end 
  
  def import
    @files.each {|file| Song.new_by_filename(file)}
  end
end