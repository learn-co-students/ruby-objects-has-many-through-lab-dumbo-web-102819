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

    def new_song(name_arg, genre)
        Song.new(name_arg, self, genre)
    end 

    def songs
        Song.all.select do |instance|
            instance.artist == self
        end 
    end 

    def genres
        songs.collect do |instance|
            instance.genre
        end 
    end 

end 