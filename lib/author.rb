class Author
    attr_accessor :name
    attr_accessor :posts
    @@all = []
    def initialize(name)
        @name = name
        @posts = []
    end

    #idk what the post is supposed to be. Text of the post? name?
    def add_post(post)
        post.author = self
        @posts << post
        @@all << post
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        post.author = self
        @posts << post
        @@all << post
    end

    def self.post_count
        @@all.length()
    end
end