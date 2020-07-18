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

    def artist_name=(name)
        @artist = Artist.find_or_create_by_name(name)
    end

    def self.new_by_filename(filename)
        result = filename.split(" - ")
        s = Song.new(result[1])
        s.artist_name = result[0]
        s
    end

end
