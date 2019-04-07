class Genre
  #class ///////////////
  @@all = []

  def self.all
    @@all
  end

  #instance ////////////
  attr_reader :name

  def initialize(name)
    #class ///////////////
    @@all << self

    #instance ////////////
    @name = name
  end

  def songs
    Song.all.select { |song|
      song.genre == self
    }
  end

  def artists
    self.songs.map { |song|
      song.artist
    }.uniq
  end

end
