require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
anim1 = Animal.new(species: "Dog", weight: 458, nickname: "Fido", zoo: "Urban Cowfitters")
anim2 = Animal.new(species: "Fox", weight: 320, nickname: "Ishmail", zoo: "Urban Cowfitters")
anim3 = Animal.new(species: "Toucan", weight: 170, nickname: "Tucky", zoo: "Kong Island")
anim4 = Animal.new(species: "Monkey", weight: 450, nickname: "Babsy", zoo: "Kong Island")
anim5 = Animal.new(species: "Cow", weight: 689, nickname: "Mootoo", zoo: "Urban Cowfitters")
anim6 = Animal.new(species: "Horse", weight: 815, nickname: "Bojack", zoo: "Urban Cowfitters")
anim7 = Animal.new(species: "Lion", weight: 925, nickname: "Simba", zoo: "Urban Cowfitters")
anim8 = Animal.new(species: "Cow", weight: 623, nickname: "Bubbles", zoo: "Urban Cowfitters")
anim9 = Animal.new(species: "Giraffe", weight: 940, nickname: "Bracchio", zoo: "Kong Island")
anim10 = Animal.new(species: "Monkey", weight: 492, nickname: "Bilbo", zoo: "Kong Island")
zoo1 = Zoo.new(name: "Urban Cowfitters", location: "London, UK")
zoo2 = Zoo.new(name: "Kong Island", location: "California, CA")


binding.pry
puts "done"
