require "pry"

class Artist
    attr_accessor :name
    attr_accessor :songs
    @@all = []

    def initialize(name)
        #binding.pry
        @name = name
        @songs = []
    end

    def add_song(song)
        song.artist = self
        @songs << song
        @@all << song
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
        @songs << song
        @@all << song 
    end

    def self.song_count
        @@all.length
    end

end