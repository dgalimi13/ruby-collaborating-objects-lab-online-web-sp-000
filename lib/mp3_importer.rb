class MP3Importer
  attr_accessor :path, :size, 
  
def initialize(path)
  @size = size
  @path = path
end

def files
  @files ||= Dir.glob("#{path}/*.mp3").collect { |f| f.gsub("#{path}/", "" ) }
end

#def import
#files.new_by_filename
#end
 
end
