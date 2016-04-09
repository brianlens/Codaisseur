require './parrot'

parrot1 = Parrot.new("Sjaak", "Red", 2, "yes")
parrot2 = Parrot.new("Draak", "Groen", 15, "yes")
parrot3 = Parrot.new("Vaak", "Geel", 1, "no")
parrot4 = Parrot.new("Taak", "Red",10, "yes")

p parrot1
p parrot2
p parrot3
puts parrot4.name
