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
  has_many :employees
  validates :name, length: { minimum: 3 }
  validate  :must_carry_men_or_women_apparel
  validates :annual_revenue, numericality: { only_integer: true, allow_nil: false, greater_than_or_equal_to: 0}

  private
  def must_carry_men_or_women_apparel
    return true if mens_apparel == true || womens_apparel == true          
    errors.add(:must_carry_men_or_women_apparel, "")     

  end
end 

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id, :hourly_rate, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
end 

burnaby = Store.create(name: "burnaby", annual_revenue: 300000, mens_apparel:true, womens_apparel:true)
richmond = Store.create(name:"richmond", annual_revenue: 1260000, womens_apparel:true, mens_apparel:false)
gastown = Store.create(name:"gastown", annual_revenue: 190000, mens_apparel:true, womens_apparel:false)

# prints 3 total in Store
puts Store.count
