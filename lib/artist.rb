require_relative '../lib/song.rb'

class Artist
    attr_accessor :name, :songs

    @@all=[] 
    def self.all
        @@all
    end

    def save
        @@all<< self
    end

    def self.clear_all
        self.all.clear
    end

    def initialize (name)
        @name=name
        save
    end

    def songs
        Song.all.select {|song|song.artist==self}
    end

    def add_song (song)
       song.artist=self
    end

    def self.find_by_name(name)
        @@all.find{|artist|artist.name==name}
    end

    def self.create_by_name(name)
        self.new(name)
    end

    def self.find_or_create_by_name(name)
        # self.create_by_name(name) if self.find_by_name(name) ==nil
        # self.find_by_name(name) if self.find_by_name(name) !=nil
        self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name)
    end

    def print_songs
        songs.each do |song|
            puts song.name
        end
    end
end