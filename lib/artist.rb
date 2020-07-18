class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        Artist.all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.filter do |s|
            s.artist == self
        end
    end

    def add_song(song)
        song.artist = self
    end

    def self.find_or_create_by_name(name)
        result = Artist.all.find {|a| a.name == name}
        if result
            result
        else
            Artist.new(name)
        end
    end

    def print_songs
        songs.each do |song|
            puts song.name
        end
    end

end