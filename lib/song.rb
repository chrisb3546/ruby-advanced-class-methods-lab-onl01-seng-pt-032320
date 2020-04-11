#require "pry"
class Song
  attr_accessor :name, :artist_name
  
  @@all = []

#def initialize(#name, #artist_name)
#  @name = name
 ## @artist_name= artist_name
#end 

def self.create
  song = Song.new
  song.save
  song
end 

 def self.new_by_name(name)
   songone = Song.new
    songone.name = name
         songone.save
         songone
  end

def self.create_by_name(name)
  songtwo = Song.new
  songtwo.name = name 
  songtwo.save
  songtwo
end 

def self.find_by_name(name)
  @@all.find{|song| song.name == name}
end
  
  def self.find_or_create_by_name(name)
    create_by_name(name)
    find_by_name(name)
    end 
  
  def self.alphabetical
   
    songarray = @@all.sort_by do |song|
       song.name
    
    end 
    songarray
  end 
  
  def self.new_from_filename(name, artist_name)
    songthree = Song.new(name, artist_name)
    songthree
   
    end 
  
  
  
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  
 end
