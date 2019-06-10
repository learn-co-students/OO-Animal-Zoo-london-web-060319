class Zoo
    attr_reader(:name, :location)
    @@all = []
    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def add_animal(nickname, species, weight)
        Animal.new(nickname, species, weight, self)
    end

    def animals
        Animal.all.select {|zoo| self == zoo.zoo}
    end
    
    def loc
        Animal.all.select {|animal| animal.zoo.location == self.location}
    end

    def animal_species
        belong = Animal.all.select {|animal| animal.zoo.location == self.location}
        belong.map {|animal| animal.species}.uniq
    end

    def find_by_species(spec)
        loc.select {|animal| animal.species == spec}
    end

    def animal_nicknames
        loc.map {|animal| animal.nickname}
    end

    def self.find_by_location(location)
        Zoo.all.select {|zoo| zoo.location == location}
    end
end
