require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("Zooey101", "London")
zoo2 = Zoo.new("El Zoo", "London")
zoo3 = Zoo.new("The Zoo", "Barcelona")

animal1 = Animal.new("tiger", 100, "tigger", zoo1)
animal2 = Animal.new("tiger", 150, "stripe", zoo1)
animal3 = Animal.new("donkey", 50, "hay", zoo1)
animal4 = Animal.new("pig", 30, "Aaron", zoo2)




binding.pry
puts "done"
