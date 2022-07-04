require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.create(name: "surrey", annual_revenue: 224000, womens_apparel: true, mens_apparel: false)
whistler = Store.create(name: "whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "yaletown", annual_revenue: 430000, womens_apparel: true, mens_apparel: true)

@mens_stores = Store.where(mens_apparel: true, womens_apparel: false)
p @mens_stores

@mens_stores.each do |store| puts store.name, store.annual_revenue
end 

# Here and && or same syntax
@less_than_1m = Store.where("annual_revenue < :min", min: 1000000).and(Store.where(mens_apparel: false, womens_apparel: true))

# p @less_than_1m.annual_revenue

@less_than_1m.each do |store| puts store.name, store.annual_revenue
end 