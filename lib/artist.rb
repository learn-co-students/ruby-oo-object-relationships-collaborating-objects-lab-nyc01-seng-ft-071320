require 'pry'
class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
        @songs = []
    end
   
    def self.all
        @@all
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def self.find_or_create_by_name(artist)
       if Artist.all.find {|artists| artists.name == artist}
       Artist.all.find {|artists| artists.name == artist}
        else
        new_artist = Artist.new(artist)
        end
    end
    def print_songs
        Song.all.each do |var|
            if var.artist == self
               puts var.name
            end
        end
    end
end




