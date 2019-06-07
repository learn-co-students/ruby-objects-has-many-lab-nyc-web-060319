require "pry"

class Artist

    attr_accessor :name, :song

    @@all = []
    @@song_count = 0

    def initialize(name)
        @name = name 
        @songs = []
        @@all << song
    end
    
    def add_song(song)
        song.artist = self
        @songs << song
        @@song_count +=1
    end
    
    def songs
        @songs
    end
    
    def add_song_by_name(name)
        song = Song.new(name)
        song.name = name 
        song.artist = self
        @songs << song
        @@all << song
        @@song_count +=1
        # binding.pry
        return song
    end

    def self.song_count
        @@song_count
    end
end