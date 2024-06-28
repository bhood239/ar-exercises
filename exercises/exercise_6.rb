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

@store1.employees.create(first_name: "Jaimee", last_name: "Yates", hourly_rate: 70)

@store1.employees.create(first_name: "Bob", last_name: "Hope", hourly_rate: 30)

@store2.employees.create(first_name: "Ben", last_name: "Hood", hourly_rate: 40)

@store2.employees.create(first_name: "Jill", last_name: "Jack", hourly_rate: 30)

@store2.employees.create(first_name: "Jack", last_name: "Jill", hourly_rate: 20)
