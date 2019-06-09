class Zoo
  attr_accessor :location, :name
  @@all = []

  def initialize(location, name)
    @location = location
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def animals
    Animal.all.select {|animal| animal.zoo == self}
  end

  def animal_species
    animals.map {|animal| animal.species}.uniq
  end

  def find_by_species(spec)
    animals.map {|animal| animal.species == spec}
  end

  def animal_nicknames
    animals.map {|animal| animal.nickname}
  end

  def self.find_by_location(loc)
    @@all.select {|zoo| zoo.location == loc}
  end

end
