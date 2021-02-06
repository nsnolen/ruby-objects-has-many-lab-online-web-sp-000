class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
  end

  def all
    @@all
  end

  def songs
    Songs.all.select{|song| song.artist==self}
  end
end
