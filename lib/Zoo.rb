# frozen_string_literal: true

class Zoo
  attr_accessor(:location, :name)
  attr_reader
  attr_writer

  @@all = []

  def initialize(name:, location:)
    @name = name
    @location = location
    @@all << self
  end

  #     A zoo should be initialized with a name and a location, which should both be passed as strings.

  # Zoo#location should return the location of the zoo instance.

  # Zoo#name should return the name of the zoo instance.

  # Zoo.all should return an array of all the zoo instances.
  def self.all
    @@all
  end

  # Zoo#animals should return all the animals that a specific instance of a zoo has.
  def animals
    Animal.all.select { |animal| animal.zoo == @name }
  end

  # Zoo#animal_species should return an array of all the species (as strings) of the
  #  animals in the zoo. However, if you have two dogs, it should only return
  #   one "Dog" string (aka an unique array).
  def animal_species
    Animal.all.map { |animal| animal.species if animal.zoo == @name }.uniq.compact
  end

  # Zoo#find_by_species should take in an animal's species as an argument and
  #  return an array of all the animals in that zoo, which are of that species.
    def find_by_species(species_input)
        Animal.find_by_species(species_input).select {|animal| animal.zoo == @name }
    end
  # Zoo#animal_nicknames should return an array of all the nicknames of animals that
  #  a specific instance of a zoo has.
  def animal_nicknames
    Animal.all.map { |animal| animal.nickname if animal.zoo == @name }.uniq.compact
  end

  # Zoo.find_by_location should take in a location as an argument and return an
  #  array of all the zoos within that location.
  def self.find_by_location(location_input)
    @@all.select {|zoo| zoo.location == location_input}
  end
end
