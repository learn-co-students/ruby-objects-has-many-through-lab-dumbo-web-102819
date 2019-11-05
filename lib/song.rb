class Song

    attr_accessor :name, :artist, :genre
    
    @@all = []
    
        def initialize (name, artist, genre)
            @name = name
            @artist = artist
            @genre = genre
    
            @@all << self
        end ###initialize
    

        def self.all
             @@all
        end  ## all
    
    
end  ## song class 
    