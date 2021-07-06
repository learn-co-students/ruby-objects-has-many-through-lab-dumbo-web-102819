class Song 
    @@all_song = []

    attr_reader :artist, :genre, :name 

    def initialize(name, artist, genre)
        @artist = artist
        @genre = genre 
        @name = name 
        @@all_song << self
    end 

    def self.all
        @@all_song
    end 

    

end 