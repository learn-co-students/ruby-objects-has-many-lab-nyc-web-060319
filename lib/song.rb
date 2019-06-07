require_relative "./artist.rb"

class Song

attr_accessor :name, :artist

@@all = []

def initialize(name)
  @name = name
  @artist = []
  @@all << self
end


def self.all
  @@all
end

def artist_name
    if artist == []
        return nil
    end
    @artist.name
end







end
