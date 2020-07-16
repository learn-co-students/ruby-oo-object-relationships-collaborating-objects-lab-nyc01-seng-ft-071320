class Artist
    attr_accessor :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end
    
    def self.all
        @@all 
    end



    def self.find_or_create_by_name(artist_name)
        if self.all.find {|artist| artist.name == artist_name} != nil
            return self.all.find {|artist| artist.name == artist_name}
        else
            new_artist = self.new(artist_name)
        end
    end

    


end