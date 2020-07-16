class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    Song.all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    music = filename.split(" - ")
    song = self.new(music[1])
    song.artist = Artist.find_or_create_by_name(music[0])
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
end