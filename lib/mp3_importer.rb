require 'pry'
class MP3Importer
    attr_accessor :path 

    def initialize(path)
        @path = path 
    end

    def files
       Dir.glob("#{path}/*.mp3").map do |song|
            song.split("/")[4]
        end
    end

    def import
        files.each do |file|
            
        end
    end

end
