
class Animal
  attr_accessor :weight, :species
  attr_reader :nickname
   @@all = []
  
  def initialize(weight,nickname,species)
    @weight = weight 
    @nickname = nickname
    @species = species
    @@all << self
  end 
  
  def self.all
    @@all
  end 

  def self.find_by_species(species)
   @@all.select{|data| species == data.species}
  end
  
  # def nickname
  #   all.find{|data| data.nickname}
  # end 

  # def weight
  #   all.find{|data| data.weight}
  # end 

  # def species
  # Animal.all.find{|data| data.species}
  # end 
  
  def zoo
    Zoo.all 
  end 

end
