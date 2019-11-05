class Artist

    attr_accessor :name
    @@all = []
    def initialize (name)
        @name = name
    
        @@all << self
    
    end ## initialize
    
    def self.all
        @@all
    end ## all
    
    def songs
        Song.all.select do |song|
        song.artist == self
        end  ## select
    
    end ## songs
    
    
    def new_song (name, genre)
        Song.new(name, self, genre)
    
    end ## new song
    
    def genres
       songs.map do |song|
       song.genre
       end ### map
    end ## genres
    
    
end ## Artist class
    