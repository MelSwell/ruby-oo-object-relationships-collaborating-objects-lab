require 'pry'

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end

  def files
    directory = Dir.new(path)
    files = directory.select { |file| file.length > 2 }
  end
  
  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end