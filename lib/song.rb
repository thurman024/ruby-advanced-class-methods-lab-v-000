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
    new_song.save
    new_song
  end

  def self.new_by_name(title)
    song = Song.create
    song.name = title
    song
  end

  def self.create_by_name(title)
    song = Song.new_by_name(title)
    song.save
    song
  end

  def self.find_by_name(name)
    Song.all.detect {|s| s.name == name}
  end

  def self.find_or_create_by_name(name)
    if Song.find_by_name(name)
      return Song.find_by_name(name)
    else
      Song.create_by_name(name)
    end
  end

  def self.alphabetical
    Song.all.sort
  end
end
