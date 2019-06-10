class Animal
    attr_accessor(:weight)
    attr_reader(:nickname, :species, :zoo)
    @@all = []
    def initialize(nickname, species, weight, zoo)
        @nickname = nickname
        @species = species
        @weight = weight
        @zoo = zoo
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(spec)
        Animal.all.select {|animal| animal.species == spec}
    end
end
