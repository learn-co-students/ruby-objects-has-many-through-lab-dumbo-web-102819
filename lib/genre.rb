class Genre
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
        Song.all.select do |instance|
            instance.genre == self
        end 
    end 

    def artists
        songs.collect do |instance|
            instance.artist 
        end 
    end 


end 