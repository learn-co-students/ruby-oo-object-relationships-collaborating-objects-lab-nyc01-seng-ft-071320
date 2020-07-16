require 'pry'

class MP3Importer
  attr_accessor :path
  


  def initialize(path) 
    @path = path
  end

  def files
    @files = Dir.entries(self.path).select {|f| !File.directory? f}
  end

  def import 
    self.files.each do |song|
      Song.new_by_filename(song)
    end
  end


end