require 'pry'
class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        mp3_files = Dir.glob("#{path}/*.mp3")
        mp3_files.collect { 
            |file| file.gsub("./spec/fixtures/mp3s/", "")
        }
    end

   def import
        files.each{ |filename| Song.new_by_filename(filename) }
    end
end