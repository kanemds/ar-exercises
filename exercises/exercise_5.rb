require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...


p Store.sum("annual_revenue")


# Person.average(:age) # => 0.387e2
# Person.average(:age).to_i # => 38
# Person.average(:age).to_f # => 38.7
# Person.average(:age).to_f.round # => 39


p Store.average(:annual_revenue).to_i

p = Store.where("annual_revenue < :more", more: 1000000).count


