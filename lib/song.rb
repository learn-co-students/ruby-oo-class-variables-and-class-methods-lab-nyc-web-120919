class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)
    end

    def self.count
        return @@count
    end

    def self.artists
        return @@artists.uniq
    end

    def self.genres
        return @@genres.uniq
    end

    def self.genre_count
        result = {}
        @@genres.each do |genre|
            if result[genre]
                result[genre] += 1
            else
                result[genre] = 1
            end
        end
        return result
    end

    def self.artist_count
        result = {}
        @@artists.each do |artist|
            if result[artist]
                result[artist] += 1
            else
                result[artist] = 1
            end
        end
        return result
    end
end