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
end
