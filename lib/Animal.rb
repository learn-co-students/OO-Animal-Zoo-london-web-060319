class Animal
  attr_accessor :weight, :zoo
  attr_reader :nickname, :species
  @@all = []

  def initialize(nickname, weight, species, zoo)
    @nickname = nickname
    @weight = weight
    @species = species
    @zoo = zoo
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_species(spec)
    @@all.select {|animal| animal.species == spec}
  end

end
