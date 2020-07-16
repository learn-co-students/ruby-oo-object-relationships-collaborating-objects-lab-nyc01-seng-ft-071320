class Song
    @@all = []
    attr_accessor :name, :artist
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        song_name = Song.new(filename.split(' - ')[1])
        find_artist = Artist.all.find {|artist| artist.name == filename.split(' - ')[0]}
        if find_artist
            song_name.artist = find_artist
        else
            new_artist = Artist.new(filename.split(' - ')[0])
            song_name.artist = new_artist
        end
        song_name
    end

    def artist_name=(a_name)
        find = Artist.all.find {|artist| artist.name == a_name}
        if find
            self.artist = find
        else
            artist = Artist.new(a_name)
            self.artist = artist
        end
    end
end