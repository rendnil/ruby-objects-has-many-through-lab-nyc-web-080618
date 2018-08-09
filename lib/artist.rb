
class Artist

  attr_reader :name

  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
    new_song
  end

  def songs
    Song.all.select do |song_object|
      song_object.artist == self
    end
  end

  def genres
    songs.map do |song_object|
      song_object.genre
    end

  end





end
