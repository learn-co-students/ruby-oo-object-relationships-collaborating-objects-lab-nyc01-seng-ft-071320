require 'pry'
class MP3Importer
    attr_accessor :song, :artist, :path

    def initialize (file)
        @path=file
    end

    def files
        files = Dir.entries(@path).select {|each| each.end_with?(".mp3")}
        # binding.pry
    end

    def import
        files.each do |song|
            Song.new_by_filename
        end

    end

end