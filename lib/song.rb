class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end
  
  def self.create
    song = Song.new
    @@all << song
    song
  end
  
  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = Song.new
    song.name = name
    @@all << song
    song
  end
  
  def self.find_by_name(name)
    @@all.each do |song|
      if song.name == name
        return song
      else
        
      end
    end
    return nil
  end
  
  def self.find_or_create_by_name(name)
    if find_by_name(name) == nil
      create_by_name(name)
    else
      find_by_name(name)
    end
  end
  
  def self.alphabetical
    @@all.sort_by { |song| song.name }
  end
  
  def self.new_from_filename(name)
    name.split(" - ")
  end

  def save
    self.class.all << self
  end

end
