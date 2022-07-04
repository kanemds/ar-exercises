require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# newer version use ActiveRecord::Base instead of ApplicationRecord
# creating class Store to reference the database setup
# class name is singular  
# database name is plural
# class name first letter capital
# database no need
class Store < ActiveRecord::Base

end 

class Employee < ActiveRecord::Base
  
end 
        
burnaby = Store.create(name: "burnaby", annual_revenue: 300000, mens_apparel:true, womens_apparel:true)
richmond = Store.create(name:"richmond",annual_revenue: 1260000, womens_apparel:true)
gastown = Store.create(name:"gastown",annual_revenue: 190000, mens_apparel:true)

# prints 3 total in Store
puts Store.count

