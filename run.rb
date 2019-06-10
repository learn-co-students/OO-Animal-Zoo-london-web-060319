require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

zoo1 = Zoo.new("Berkshire-Zoo","Berkshire")
zoo2 = Zoo.new("Buckingham_zoo","Berkshire")
zoo3 = Zoo.new("Herforshire-Zoo","Herforshire")
zoo4 = Zoo.new("Sutton-Zoo","Sutton")
zoo5 = Zoo.new("Windsor-Zoo","Widsor")
Zoo.all
Zoo.find_by_location("Berkshire")
zoo3.find_by_species("Dog") 
zoo1.animals 
zoo4.animal_nicknames




animal1 = Animal.new(12,"tommy1","Dog")
animal2 = Animal.new(20,"tommy2","Dog")
animal3 = Animal.new(7,"binny1","Cat")
animal4 = Animal.new(8,"binny2","Cat")
animal5 = Animal.new(6,"tommy3","Dog")
animal6 = Animal.new(12,"Jerry","Rat")
animal7 = Animal.new(12,"Jerry2","Rat")
Animal.all
Animal.find_by_species("Dog")
animal4.weight
animal3.zoo
animal1.nickname
animal7.species

binding.pry
puts "done"



zoo2.animal_species("Cat") #unique method is not working

