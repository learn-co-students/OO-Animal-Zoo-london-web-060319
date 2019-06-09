require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

#Test your code here
z1 = Zoo.new(name:"ZSL", location: "London")
z2 = Zoo.new(name:"Howletts", location: "Kent")

a1 = Animal.new(species: "Cat", weight:20, nickname: "Fluffy", zoo: z1)
a2 = Animal.new(species: "Cat", weight:25, nickname: "Felix", zoo: z1)
a2 = Animal.new(species: "Dog", weight:25, nickname: "El Doggo", zoo: z2)

binding.pry


z1.animals
z1.animal_species
z1.find_by_species(species: "Cat")
z1.animal_nicknames

Animal.all

Zoo.find_by_location(location: "Kent")
puts "done"
