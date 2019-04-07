class Song
  #class ///////////////
  @@all = []

  def self.all
    @@all
  end

  #instance ////////////
  attr_accessor :artist, :genre
  def initialize(name, artist, genre)
    #class ///////////////
    @@all << self

    #instance ////////////
    @name = name
    @artist = artist
    @genre = genre
  end
end
