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

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        name = filename.split(" - ")[1]
        new_song = Song.new(name)
        new_song.artist.name = filename.split(" - ")[0]

        # self.artist= filename.split(" - ")[0]
    end
end