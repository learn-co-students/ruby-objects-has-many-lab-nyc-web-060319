require "pry"

class Song
    attr_accessor :artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        #binding.pry
        @name = name
        @artist = nil
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if artist == nil
            return nil
        end
        @artist.name
    end

end