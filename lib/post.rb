class Post
    attr_accessor :title
    attr_accessor :author
    #attr_accessor :post
    @@all = []

    def initialize(post)
        @title = post
        @@all << self
        @author = nil
    end

    def self.all
        @@all
    end

    def author_name
        if @author == nil
            return nil
        else
            return @author.name
        end
    end
end