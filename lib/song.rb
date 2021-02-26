require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file)
    split = file.split(" - ")
    song = self.new(split[1])
    song.artist = split[0]
    binding.pry
  end

end