
class Genre

  attr_reader :name

  @@all =  [ ]

  def initialize(name)
    @name = name
  end


  def new_song(name, artist)
    new_song = Song.new(name, artist, self)
  end


  def self.all
    @@all
  end

  def songs
    Song.all.select do |song_object|
      song_object.genre == self
    end
  end

  def artists
    self.songs.map do |song_object|
      song_object.artist
    end  


  end





end
