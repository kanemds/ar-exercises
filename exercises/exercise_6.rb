require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "a", last_name: "a", hourly_rate: 60)
@store1.employees.create(first_name: "b", last_name: "b", hourly_rate: 70)
@store1.employees.create(first_name: "c", last_name: "c", hourly_rate: 70)
@store2.employees.create(first_name: "d", last_name: "d", hourly_rate: 80)
@store2.employees.create(first_name: "e", last_name: "e", hourly_rate: 80)

p Employee