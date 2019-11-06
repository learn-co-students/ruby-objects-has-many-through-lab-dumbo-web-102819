class Artist 
    @@artist_all = []

    attr_reader :name 

    def initialize(name)
        @name = name 
        @@artist_all << self 
    end 

    def self.all
        @@artist_all 
    end

    def new_song(song_name, song_genre)
       Song.new(song_name, self, song_genre)
    end 

    def songs
        Song.all.select do |song_instances|
            self == song_instances.artist 
        end 
    end 

    def genres
        songs.map do |my_songs|
            my_songs.genre 
        end 
    end 

end 