class Song
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre
    end

    @@count = 0
    @@artists = []
    @@genres = []
    @@artist_hash = {}
    @@genres_hash = {}

    def self.count 
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.artist_count
        @@artists.each do |artist|
            if !@@artist_hash[artist]
                @@artist_hash[artist] = 1
            else 
                @@artist_hash[artist] += 1
            end 
        end
        @@artist_hash 
    end

    def self.genre_count
        @@genres.each do |genre|
            if !@@genres_hash[genre]
                @@genres_hash[genre] = 1
            else 
                @@genres_hash[genre] += 1
            end 
        end
        @@genres_hash 
    end
    
end