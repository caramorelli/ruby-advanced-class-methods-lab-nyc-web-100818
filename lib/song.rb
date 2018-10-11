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
    @song = song
  end 
  
  def name 
    @name = name
  end 
  
  def self.create_by_name(song_name)
    @@all << song_name
  end 
  
  def self.find_by_name(song_name)
    @all
  end 
  
  def self.find_or_create_by_name(song_name)
    unless @@all.include?(song_name) 
       song_name
    end 
  end 
  
  def alphabetical 
    @@all.sort
  end 

end
