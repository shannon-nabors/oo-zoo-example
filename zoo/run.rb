require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require_relative "lib/Species.rb"
require 'pry'

nat = Zoo.new("National Zoo", "DC")
balt = Zoo.new("Baltimore Zoo", "Baltimore, MD")
fake = Zoo.new("Imaginary Zoo", "DC")

lion = Species.new("Lion")
monkey = Species.new("Monkey")
penguin = Species.new("Penguin")
anaconda = Species.new("Anaconda")

larry = Animal.new(nat, lion, "Larry", 500)
barry = Animal.new(nat, monkey, "Barry", 60)
chelsea = Animal.new(nat, lion, "Chelsea", 450)
sam = Animal.new(balt, penguin, "Sam", 20)
rodney = Animal.new(balt, anaconda, "Rodney", 55)
harry = Animal.new(balt, lion, "Harry", 570)

binding.pry
puts "done"
