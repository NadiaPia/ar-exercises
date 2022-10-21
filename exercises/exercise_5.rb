require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total = Store.sum(:annual_revenue)
average_amount = Store.average(:annual_revenue)
top_sales = Store.where("annual_revenue >1000000").count
puts "total is #{total}"
puts "average is #{average_amount}"
puts "top_sales are #{top_sales}"
