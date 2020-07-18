class MP3Importer
    attr_accessor :path, :song_files

    def initialize(path)
        @path = path
    end

    def files
        Dir.children(path)
    end

    def import
        self.files.each do |file_name|
            Song.new_by_filename(file_name)
        end
    end

end