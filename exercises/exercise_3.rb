require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...


# the id = 3 name = "gastown"
@store3 = Store.find(3)
p @store3

@store3.destroy

p Store.count
p Store.all