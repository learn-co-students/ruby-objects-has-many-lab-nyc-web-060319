require 'pry'
require 'song.rb'

class Artist

    attr_reader :name, :songs
    
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def add_song(song)
        song.artist=(self)
        self.songs << song
    end

    # hello = Song.new("Hello")
    #     adele.add_song(hello)
    #     expect(adele.songs).to include(hello)
    #     expect(hello.artist).to eq(adele)

    def add_song_by_name(name)
        new_song = Song.new(name)
        new_song.artist = self  
        self.songs << new_song
    end

    def self.all
        @@all
    end

    def self.song_count
        total_songs = []
        @@all.each do |artist|
            total_songs << artist.songs.length
        end
        total_songs.reduce(:+)
    end
end

# kira_miki = Artist.new("Kira-miki")

# your_love = Song.new("Your Love Is a Drug")
# shine_spark = Song.new("Shine Spark")

# your_love.artist= kira_miki
# shine_spark.artist= kira_miki

# # your_love.artist #Kira-miki obj
# kira_miki.add_song(your_love)
# kira_miki.add_song(shine_spark)
# binding.pry

