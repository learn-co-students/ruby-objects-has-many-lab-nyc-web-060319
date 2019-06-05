class Song
    attr_accessor :artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @artist = nil
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        @name
    end

end