class Zoo
   
   attr_accessor :animals, :nickname , :location

   @@all = []

  def initialize(name,location)
    @name = name 
    @location = location 
    @animals = animals 
    @@all << self
    @find_by_location
  end 
   
  def self.all
    @@all
  end 
  
  def self.find_by_location(location)
    all.select{|data| location == data.location} 
  end 

  def animals
    Animal.all
    #Animal.all.select{|data| species == data.species}
  end 

  def animal_species(species)
    Animal.all.select{|data| species == data.species}.uniq {|data| data.species}

  end 

  def find_by_species(species)
   Animal.all.select{|data| species == data.species}
  end

  def animal_nicknames
    Animal.all.select{|data| nickname == data.nickname}
  end 

end
