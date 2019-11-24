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
    song = Song.new 
    song.save
    song
  end
  
  def self.new_by_name(name)
    song = self.new            #passingCuric
    song.name = name
    song 
  end
  
  def self.create_by_name(name)
    song = self.create            #passingCuric
    song.name = name 
    song 
  end
  
  def self.find_by_name(name)
    self.all.find{|song| song.name == name}    #passingRubyDoc
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)  #passingCoderW
  end
  
  def self.alphabetical
    self.all.sort_by{|n| n.name}     #passingRubGuidVid
  end
  
  def self.new_from_filename(file)
    rows = csv_data.split("\n")
    people = rows.collect do |row|
      data = row.split(", ")
      name = data[0]
      age = data[1]
  company = data[2]
  person = Person.new
  person.name = name
  person.age = age
  person.company = company
  person
  end
  
  def self.create_from_filename(file)
    
  end
  
  def self.destroy_all
    @@all = []
  end
end
