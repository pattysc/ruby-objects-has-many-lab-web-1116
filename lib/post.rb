class Post

  attr_reader :title
  attr_accessor :author

  def initialize(title)
    @title = title
  end

  def author_name
    if @author
      @author.name
    end
  end
end
