require 'pry'

class MP3Importer
    attr_accessor :path, :files
    def initialize(path)
        @path = path
    end

    def files
        complete_files = Dir.glob("#{path}/*.mp3").collect{|element| element.split('/')}
        @files ||= complete_files.map {|element| element[-1]} 
    end

    def import
        split_files = files.map {|file| file.split(" - ")}
        song = split_files.map {|filename| Song.new_by_filename(filename)}
    end
end