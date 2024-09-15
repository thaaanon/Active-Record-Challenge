# challenge_create.rb
require_relative 'ar'
require_relative 'models/product'

# 1. Using new and save
product1 = Product.new(name: 'New Product 1', price: 10.0, stock_quantity: 20)
product1.save

# 2. Using create
product2 = Product.create(name: 'New Product 2', price: 15.0, stock_quantity: 30)

# 3. Using ActiveRecord transaction
Product.transaction do
  product3 = Product.create!(name: 'New Product 3', price: 20.0, stock_quantity: 40)
end

# Create a Product object with missing columns (invalid object)
invalid_product = Product.new(name: 'Short')
unless invalid_product.save
  puts invalid_product.errors.full_messages
end
