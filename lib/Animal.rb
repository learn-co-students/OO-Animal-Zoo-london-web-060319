class Animal

    attr_accessor :weight, :zoo_name 
    attr_reader :species, :nickname 

    @@all=[] 

    def initialize(species:, weight:, nickname:,zoo_name:)
        @species=species 
        @weight=weight 
        @nickname=nickname 
        @zoo_name=zoo_name 
        @@all<<self 
    end 

    def self.all
        @@all
    end 

    def zoo
        Zoo.all.select {|zoos| zoos.name==self.zoo_name} 
    end 

    def self.find_by_species(species)
        @@all.select {|animals| species==animals.species}
    end 

end
