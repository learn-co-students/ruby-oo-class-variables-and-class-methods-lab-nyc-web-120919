class Song
    attr_accessor :name, :artist, :genre

    @@count = 0 
    @@artists = []
    @@genres = []
    def initialize(name,artist,genre)
        @name = name 
        @artist = artist 
        @genre = genre 
        @@artists << artist 
        @@genres << genre 
        @@count -= -1 
    end 

    def self.genres 
        @@genres.uniq
    end 
    def self.artists 
        @@artists.uniq
    end 
    def self.count 
        @@count 
    end 
    def self.artist_count 
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] -= -1 
            else 
                artist_count[artist] = 1
            end 
        end 
        artist_count
    end 
    def self.genre_count
        hash_genre_count = {}
        @@genres.each do |genre| #iterate through genre 
            if hash_genre_count[genre] #check if the genre exists
                hash_genre_count[genre] -=-1 
            else 
                hash_genre_count[genre] = 1 
            end 
        end 
        hash_genre_count
    end 

end 