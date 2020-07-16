require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end

  def self.new_by_filename(song_file)
    split_array = song_file.delete_suffix(".mp3").split(" - ")
    new_song = self.new(split_array[1])
    new_song.artist_name = split_array[0]
    new_song
  end

  def artist_name=(name)
    if Artist.find(name)
      self.artist = Artist.find(name)
    else
      Artist.new(name)
      self.artist = Artist.find(name)
    end
  end

end