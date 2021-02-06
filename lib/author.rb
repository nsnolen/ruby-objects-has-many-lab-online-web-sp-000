class Author
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name

  end

  def self.all
    @@all
  end

  def posts(post)
    Post.all.select{|post| post.author==self}
  end

end
