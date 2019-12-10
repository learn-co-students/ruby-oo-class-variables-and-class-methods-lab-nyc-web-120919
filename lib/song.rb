class Song
    @@count = 0
    @@artists = []
    @@genres = []
    attr_accessor :name, :artist, :genre
    def initialize (name, artist, genre) 
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count 
        @@count
    end

    def self.artists 
        @@artists.uniq
    end

    def self.genres 
        @@genres.uniq
    end

    def self.genre_count
        @@genres.reduce({}) do |memo_hash, genre|
            if memo_hash[genre] == nil 
                memo_hash[genre] = 1 
            else
                memo_hash[genre] += 1
            end
            memo_hash
        end
    end

    def self.artist_count 
        @@artists.reduce({}) do |memo_hash, artist|
            if memo_hash[artist] == nil 
                memo_hash[artist] = 1 
            else
                memo_hash[artist] += 1
            end
            memo_hash
        end
    end

end