class Author

  attr_reader :name, :posts
  attr_accessor :author, :title

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    @@post_count += 1
    temp = Author.new(title)
    @posts << temp
    temp.author = self
    temp.title = title
  end

  def self.post_count
    @@post_count
  end
end

# betty.add_post_by_title("My Great Blog Post")
# # binding.pry
# expect(betty.posts.last.title).to eq("My Great Blog Post")
# expect(betty.posts.last.author).to eq(betty)
