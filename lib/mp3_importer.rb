require 'pry'

class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end
  
  def files
    Dir.glob("#{@path}/*.mp3").map do |file|
      file.split('/')[-1]
    end
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
end

