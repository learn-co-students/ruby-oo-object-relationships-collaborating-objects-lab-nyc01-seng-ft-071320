class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def self.new_by_filename(file_name)
         song = Song.new("#{file_name.split(" - ")[1]}")
         song.artist_name = file_name.split(" - ")[0]
         song
         #puts song.name 
         #puts song.artist.name
    end  

    def artist_name=(artist_name)
        self.artist = Artist.find_or_create_by_name(artist_name)
    end
end