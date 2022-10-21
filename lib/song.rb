class Song
    #Class variables
    @@count = 0
    @@artists = []
    @@genres = []
    #Instance variables
    attr_accessor :name, :artist, :genre
    #Instance methods
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end
    #Class methods
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
        genre_count = {}
        @@genres.tally.each{|genre, count|genre_count[genre] = count}
        genre_count
    end
    def self.artist_count
        artist_count = {}
        @@artists.tally.each{|artist, count|artist_count[artist] = count}
        artist_count
    end
end