class Animal

    @@all = []

    attr_accessor :weight, :zoo
    attr_reader :species, :nickname

    def initialize(species:, weight:, nickname:, zoo:)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@all << self
    end

    def self.all
        # should return an array of all the animal instances.
        @@all
    end

    def self.find_by_species(species:)
        # should take in an animal's species as an argument and return an array of all the animals,
        # which are of that species.
        @@all.select{|animal| animal.species == species}
    end

end
