class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  end
  
  def files
    new_files = Dir.new(self.files)
    
    binding.pry
  end 
  
  def import
    @files.each {|file| Song.new_by_filename(file)}
  end
end