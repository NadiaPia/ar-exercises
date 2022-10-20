require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
=begin
#-----One of the ways to create a table---------------------
store = Store.new
store.name = "Burnaby"
store.annual_revenue = 300000
store.mens_apparel = true
store.womens_apparel = true
store.save
=end


#-----Another way to create a table---------------------
store = Store.create(
  name: "Burnaby", 
  annual_revenue: 300000, 
  mens_apparel: true, 
  womens_apparel: true
  )
#puts store.name

store = Store.create(
  name: "Richmond", 
  annual_revenue: 1260000, 
  mens_apparel: false, 
  womens_apparel: true
  )

store = Store.create(
  name: "Gastown", 
  annual_revenue: 190000, 
  mens_apparel: true, 
  womens_apparel: false
  )
  
stores = Store.all
puts stores.count
