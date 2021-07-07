#require_relative './song.rb'
class Artist 
    attr_accessor :name
    
    @@all=[]
    
    def initialize(name)
        @name= name
        @@all<<self
        
    end 
    def self.all
        @@all
    end 
     
    def songs 
        Song.all.select{|a_song| a_song.artist == self}
    end 
    def add_song (song)
        song.artist= self 
    end


    def self.find_by_name(name)
        self.all.find{|a_artist| a_artist.name == name}

    end

    def self.find_or_create_by_name(name)
        self.find_by_name(name) || self.new(name)
    end 
    def print_songs #because of we need to outputs a list of song with their name we can use each

        songs.each do |song|
            puts song.name
        end 
    end 

    
        

    
    


end 

