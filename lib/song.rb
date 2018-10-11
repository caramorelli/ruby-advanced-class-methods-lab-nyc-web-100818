class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def create
    @song = song
  end 
  
  def create_by_name(song_name)
    @@all << song_name
  end 
  
  def find_by_name(song_name)
    @@all.include?(song_name)
  end 
  
  def find_or_create_by_name(song_name)
    unless @@all.include?(song_name) 
      @@all << song_name
    end 
  end 
  
  def alphabetical 
    # @@all.sort
  end 

end
