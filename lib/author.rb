require 'pry'

class Author

attr_accessor :name, :post

@@posts = []

  def initialize(name)
    @name = name
  end

  def posts
    @@posts
  end

  def add_post(post)
    post.author = self
    @@posts << post
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self
    @@posts << new_post
  end

  def self.post_count
    @@posts.size
  end

end
