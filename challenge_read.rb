# challenge_read.rb
require_relative 'ar'
require_relative 'models/product'

product = Product.first
puts product.inspect

# Find total number of products
total_products = Product.count
puts "Total number of products: #{total_products}"

# Find products above $10 starting with C
products_above_10_with_c = Product.where('price > 10 AND name LIKE ?', 'C%')
products_above_10_with_c.each { |p| puts p.name }

# Find low stock products (less than 5 in stock)
low_stock_count = Product.where('stock_quantity < ?', 5).count
puts "Total number of products with low stock: #{low_stock_count}"
