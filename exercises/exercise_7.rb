require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

begin

puts "Enter a store name"
store_name = $stdin.gets.chomp
new_store = Store.new(name: store_name)
new_store.save!
# => ActiveRecord::RecordInvalid: Validation failed: Name can't be blank

rescue
  new_store.errors.full_messages.each do |message|
    puts message
  end
end