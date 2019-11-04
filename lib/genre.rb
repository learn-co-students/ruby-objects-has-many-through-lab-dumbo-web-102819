class Genre

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end
    
    def songs
        @songs
    end

    def artists
        self.songs.collect do |songs|
            songs.artists
        end
    end

    def self.all
        @@all
    end


    end

end