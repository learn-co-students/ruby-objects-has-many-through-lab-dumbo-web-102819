class Genre 
    @@genre_all = []

    attr_reader :name 

    def initialize(name)
        @name = name  
        @@genre_all << self
    end 

    def self.all 
        @@genre_all
    end 

    def songs 
        Song.all.select do |song_instances|
            self == song_instances.genre 
        end 
    end 

    def artists 
        songs.map do |songs_in_genre|
            songs_in_genre.artist
        end 
    end 

    

end 