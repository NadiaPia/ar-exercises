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
print "Enter a store name to create > "
new_name = gets.chomp

store = Store.create(
  name: new_name
)
puts store.errors
store.errors.each do |attr, msg|
  puts "#{attr}, #{msg}"
end