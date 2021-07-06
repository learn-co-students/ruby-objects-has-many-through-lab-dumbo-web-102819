class Genre
     
        attr_accessor :name
    
        @@all = []
     
     def initialize (name)
         @name = name
    
         @@all << self
    
     end ##initialize
    
    
     def self.all
           @@all
     end ## all 
    
     def songs
         Song.all.select do |song|
         song.genre == self
         end ## select
     end ## songs
    
     def artists
         songs.map do |song|
         song.artist
         end #map
     end ##artists
    
end ##Genre class
    