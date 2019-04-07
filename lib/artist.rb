class Artist
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

  def new_song(song_name, song_genre)
    Song.new(song_name, self, song_genre)
  end

  def songs
    Song.all.select { |song|
      song.artist == self
    }
  end

  def genres
    self.songs.map { |song|
      song.genre
    }.uniq
  end

end
