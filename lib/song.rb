class Song
	attr_accessor :name, :artist, :genre

	@@all = []

	def initialize(name, artist, genres)
		@name = name
		@artist = artist
		@genre = genres

		@@all << self
	end
	
	def self.all
		@@all 
	end
end