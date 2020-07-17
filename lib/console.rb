require_relative './song.rb'
require_relative './artist.rb'
require 'pry'


drake = Artist.new("Drake")

gaga_test = Artist.find_or_create_by_name("gaga")









binding.pry