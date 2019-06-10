require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


lasvegas = Zoo.new("Lvegas", "Las Vegas")
london = Zoo.new("Londress", "London")
london2 = Zoo.new("Londressu", "London")

tom = london.add_animal("Tom", "Cat", 3)
spark = london.add_animal("Spark", "Cat",2)
billy = london.add_animal("Billy", "Dog", 10)


binding.pry
puts "done"
