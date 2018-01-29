class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    new_song = Song.new
    @@all << new_song
    new_song
  end

  def self.new_by_name(title)
    song = self.create
    song.name = title
  end

  def self.create_by_name(title)
    song = self.new_by_name(title)
    song.save
    song
  end
    
end
