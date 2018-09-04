require 'pry'

class Artist

  attr_reader :name

  @@songs = []

  def initialize(name)
    @name = name
  end

  def songs
    @@songs
  end

  def add_song(song)
    song.artist = self
    @@songs << song
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
    @@songs << new_song
  end

  def self.song_count
    @@songs.size
  end

end
