class Zoo

    attr_accessor :name, :location # should return the name & location of the zoo instance. 
    
    @@all = []

    def initialize(name:, location:)
        # should be initialized with a name and a location, which should both be passed as strings.
        @name = name
        @location = location
        @@all << self
    end 

    def self.all
        # should return an array of all the zoo instances.
        @@all
    end

    def animals
        # should return all the animals that a specific instance of a zoo has.
        Animal.all.select {|animal| animal.zoo == self}
    end

    def animal_species
        # should return an array of all the species (as strings) of the animals in the zoo. 
        # However, if you have two dogs, it should only return one "Dog" string (aka an unique array).
        Animal.all.collect {|animal| animal.species if animal.zoo == self}.uniq
    end

    def find_by_species(species:)
        # should take in an animal's species as an argument and 
        # return an array of all the animals in that zoo, which are of that species.
        Animal.all.select{|animal| animal.species == species && animal.zoo == self}
    end

    def animal_nicknames
        # should return an array of all the nicknames of animals that a specific instance of a zoo has.
        nicknames = []
        Animal.all.each do |animal|
            if animal.zoo == self
                nicknames << animal.nickname
            end 
        end
        nicknames
    end

    def self.find_by_location(location:)
        # should take in a location as an argument and return an array of all the zoos within that location.
        @@all.select{|zoo| zoo.location == location}
    end

end
