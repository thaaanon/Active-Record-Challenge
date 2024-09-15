# challenge_faker.rb
require_relative 'ar'
require_relative 'models/category'
require_relative 'models/product'
require 'faker'

10.times do
  category = Category.create(name: Faker::Commerce.department)
  10.times do
    Product.create(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price,
      stock_quantity: Faker::Number.between(from: 1, to: 100),
      category: category
    )
  end
end
