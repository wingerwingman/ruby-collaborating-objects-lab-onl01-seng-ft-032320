class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    files = []
    Dir.new(self.files).each do |file|
      files << file if file.lenght > 4
    end
    files
    
    binding.pry
  end 
  
  def import
    @files.each {|file| Song.new_by_filename(file)}
  end
end