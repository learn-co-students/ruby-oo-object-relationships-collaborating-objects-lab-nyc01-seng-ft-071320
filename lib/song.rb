require 'pry'

class Song
    attr_accessor :name, :artist
    @@all=[]

    def self.all
        @@all
    end

    def save
        @@all<<self
    end

    def self.destroy_all
        self.all.clear
    end

    def initialize (name)
        @name=name
        save
    end

    def self.new_by_filename (filename)
        song=self.new(filename)
        # binding.pry
        song.artist_name=filename.split(" - ")[0]
        song.name=filename.split(" - ")[1].chomp(".mp3")
        # binding.pry
        song
    end

    def artist_name=(name)
        self.artist= Artist.find_or_create_by_name(name)
    end

end