class Author

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end

    def self.all
        @@all
    end

    def posts 
        @posts
    end

    def add_post(post)
        post.author= self
        posts << post
    end

    def add_post_by_title(title)
        new_post = Post.new(title).author=(self)
        # new_post.author=(self)
        self.posts << new_post
        Post.all << new_post
    end

    def self.post_count #returns number of posts for ALL exisiting authors
        total_posts = @@all.collect do |author|
            author.posts.length
        end  
        total_posts.reduce(:+)  
    end

end

