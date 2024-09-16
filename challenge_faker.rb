require './config/environment'

# Load Faker gem
require 'faker'

# Create products with Faker data
10.times do
  Product.create(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence,
    price: Faker::Commerce.price(range: 10..100.0),
    stock_quantity: Faker::Number.between(from: 1, to: 500),
    category_id: rand(1..10)  # Assuming categories with IDs from 1 to 10 exist
  )
end
