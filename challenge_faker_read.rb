require './config/environment'

# Load Faker gem
require 'faker'

# Generate and display random product data
3.times do
  puts "Name: #{Faker::Commerce.product_name}"
  puts "Description: #{Faker::Lorem.sentence}"
  puts "Price: #{Faker::Commerce.price(range: 10..100.0)}"
  puts "Stock Quantity: #{Faker::Number.between(from: 1, to: 500)}"
  puts "---------------------------"
end
