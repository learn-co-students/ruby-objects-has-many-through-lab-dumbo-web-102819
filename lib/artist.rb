class Artist

    attr_accessor :name

    @@all = []

def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def songs
    @songs
end

def add_song(song)
    @songs << song
    song.artist = self
end

#This method is how the artist and song class connect to eachother via the genres class
def genres
    self.songs.collect do |song|
        song.genre
    end
end

end

