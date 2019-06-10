require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
italy = Zoo.new("Collodi", "Montecatini")
uk = Zoo.new("London Zoo", "London")
lizard = Animal.new("Lizard", 1, "Billy")
armadillo = Animal.new("Armadillo", 15, "Jorge")
cat = Animal.new("Cat", 5, "Catto")
bee1 = Animal.new("Bee", 1, "Ernesto")
bee2 = Animal.new("Bee", 1, "Beppe")
armadilla = Animal.new("Armadillo", 10, "Dolly")
italy.animals = [armadillo, armadilla, lizard] 
uk.animals = [cat, bee1, bee2]



binding.pry
puts "done"
