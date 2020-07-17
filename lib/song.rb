class Song
    attr_accessor :name, :artist
    @@all = []
    def initialize(name)
        @name = name
        Song.all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        song_info = filename.split(" - ")
        art_name = song_info[0]
        song_name = song_info[1]
        new_song = Song.new(song_name)
        new_song.artist_name = art_name
        new_song
    end

    def artist_name=(artist)
        self.artist = Artist.find_or_create_by_name(artist)
    end
end