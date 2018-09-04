require 'pry'

class Song

  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(artist)
    @artist = artist
    @@all << artist
  end

  def artist_name
    if @artist
      @artist.name
    else
      nil
    end
  end
end
