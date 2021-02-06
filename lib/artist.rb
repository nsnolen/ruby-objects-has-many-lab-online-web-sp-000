class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def all
    @@all
  end

  def songs
    Song.all.select{|songs| songs.artist==self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(title)
    title = Song.new(title)
    songs.artist=self
  end
end
