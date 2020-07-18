require 'pry'

class Song
#create songs given each file name and sending the artists name (string) to Artist class
    attr_accessor :name, :artist
    @@all = [] 

    def initialize(name)
        @name = name
        @artist = artist
        @@all << self

    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        singer, song = filename.split(" - ")
        new_song = self.new(song)
        new_song.artist_name = singer
        new_song
    end

    def artist_name=(singer_name)
        self.artist = Artist.find_or_create_by_name(singer_name)
        artist.add_song(self)
    end

end