class Song
  attr_accessor :title, :artist
  @@all = []

  def self.all
    @@all
  end

  def initialize(title)
    @title = title
    @@all << self
  end

  def artist_name
    artist.name if artist
  end
end
