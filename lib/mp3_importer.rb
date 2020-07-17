class MP3Importer
    def initialize(path)
        @path = path
    end
    def path
        @path
    end
    def files
        filenames = Dir.chdir(@path) do |path|
        Dir.glob("*.mp3")
        end
        puts "names=#{filenames}"
        filenames
    end
    def import
        song_arrays = files
        song_arrays.each do |song|
            Song.new_by_filename(song)
        end
    end
end
