class Song
    @@all = []
    attr_accessor :name, :artist
    def initialize(name)
        @name = name   
        @@all << self
    end

    def self.all
        return @@all
    end

    def artist_name
        if self.artist == nil
            return nil
        end
        return self.artist.name
    end

end