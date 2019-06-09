class Artist

    attr_accessor :name


    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        song = Song.new()
        @songs << song
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        @songs << song
        song.artist = self
    end

    def songs
        @songs
    end

    def song_count
        self.@songs.size
    end




end