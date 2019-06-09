class Zoo
    attr_accessor :name, :location 
    @@all=[]

    def initialize(name:,location:)
        @name=name
        @location=location 
        @@all<<self 
    end 

    def self.all
        @@all
    end 

    def animals
        Animal.all.select {|animals| self.name == animals.zoo_name} 
    end 

    def animal_species 
        zooanimals=animals.map {|animals| animals.species}
        zooanimals.uniq 
    end 

    def find_by_species(species)
        animals.select {|animals| species==animals.species}
    end 

    def animal_nicknames
       nicknames= animals.map {|animals| animals.nickname}
       nicknames 
    end 

    def self.find_by_location(location)
       @@all.select {|zoos| zoos.location==location}
    end 

end
