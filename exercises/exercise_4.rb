require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where('mens_apparel = TRUE')

puts @mens_stores

@mens_stores.each { |store| puts "Store name: #{store.name} \n Store revenue: #{store.annual_revenue} \n "}

@womens_stores_low_revenue = Store.where('womens_apparel = TRUE AND annual_revenue < 1000000')

puts @womens_stores_low_revenue