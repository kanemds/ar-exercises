require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
p Store.count
p Store.all

# find id
@store1 = Store.find(1)
@store2 = Store.find(2)


p@store1
p@store2

@store1.update(name:"vancouver")

p @store1
