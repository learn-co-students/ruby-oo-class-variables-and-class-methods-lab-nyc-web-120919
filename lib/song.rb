require 'pry' 

class Song
    
    @@count = 0 
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=  1
        @@genres << genre
        @@artists << artist 
         

    end  

    def self.count
        @@count
    end 

    def self.genres
        @@genres.uniq 
    end 

    def self.artists
        @@artists.uniq
    end 

    def self.genre_count
        my_hash = {}
        @@genres.each do |element|
            if !my_hash[element]
                my_hash[element] = 1 
            else 
                my_hash[element] += 1 
            end 
        end
        my_hash 
    end 

    def self.artist_count
        my_hash = {}
        @@artists.each do |element|
            if !my_hash[element]
                my_hash[element] = 1
            else 
                my_hash[element] += 1 
            end 
        end 
        my_hash
    end 
end
