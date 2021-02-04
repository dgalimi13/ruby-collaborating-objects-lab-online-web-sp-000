class MP3Importer
  attr_accessor :path, :size 
  
def initialize(path)
  @path = path
end

def files
  @files ||= Dir.glob("#{path}/*.mp3").collect { |f| f.gsub("#{path}/", "" ) }
end

def import
binding.pry
files.each do |name| 
  # name.new_by_filename
end
end
 
end
