class Author

    @@all = []
    attr_accessor :name, :posts
    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end

    def add_post(post)
        post.author = self
        @posts << post
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        self.add_post(post)
    end

    def self.post_count
        count = 0
        @@all.each do |author|
            count += author.posts.length
        end
        count
    end
end