class Author
  attr_accessor :title, :author,:name, :posts
  @@post_count = 0
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
  end

  def add_post_by_title(title)
    title = Post.new(title)
    add_post(title)
    # @posts << title
    # title.author = self
  end

  def self.post_count
    @@post_count
  end
end
