# challenge_faker_read.rb
require_relative 'ar'
require_relative 'models/category'

Category.includes(:products).find_each do |category|
  puts "Category: #{category.name}"
  category.products.each do |product|
    puts "  Product: #{product.name}, Price: #{product.price}"
  end
end
