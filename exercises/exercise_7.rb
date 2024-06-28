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

test_employee_1 = Employee.new(last_name: "Smith", hourly_rate: 20, store_id: 1)
if test_employee_1.save
  puts "Employee saved successfully"
else
  puts "Error: " + test_employee_1.errors.full_messages.to_sentence
end

test_employee_1.valid?

test_employee_2 = Employee.new(first_name: "Angela", hourly_rate: 20, store_id: 1)
if test_employee_2.save
  puts "Employee saved successfully"
else
  puts "Error: " + test_employee_2.errors.full_messages.to_sentence
end

test_employee_2.valid?

test_employee_3 = Employee.new(first_name: "Michael", last_name: "Scott", hourly_rate: "Seventy", store_id: 1)
if test_employee_3.save
  puts "Employee saved successfully"
else
  puts "Error: " + test_employee_3.errors.full_messages.to_sentence
end

test_employee_3.valid?

test_employee_4 = Employee.new(first_name: "Michael", last_name: "Scott", hourly_rate: 75)
if test_employee_4.save
  puts "Employee saved successfully"
else
  puts "Error: " + test_employee_4.errors.full_messages.to_sentence
end

test_employee_4.valid?

test_store_1 = Store.new(name: "CA", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)
if test_store_1.save
  puts "Store saved successfully"
else
  puts "Error: " + test_store_1.errors.full_messages.to_sentence
end

test_store_1.valid?

test_store_2 = Store.new(name: "Downtown", annual_revenue: -15, mens_apparel: true, womens_apparel: false)
if test_store_2.save
  puts "Store saved successfully"
else
  puts "Error: " + test_store_2.errors.full_messages.to_sentence
end

test_store_2.valid?

test_store_3 = Store.new(name: "Downtown", annual_revenue: 500000, mens_apparel: false, womens_apparel: false)
if test_store_3.save
  puts "Store saved successfully"
else
  puts "Error: " + test_store_3.errors.full_messages.to_sentence
end

test_store_3.valid?

puts "Please enter a store name:"
user_generated_store_name = gets.chomp

user_generated_store = Store.new(name: user_generated_store_name)
if user_generated_store.save
  puts "Store saved successfully"
else
  puts "Error: " + user_generated_store.errors.full_messages.to_sentence
end
user_generated_store.valid?