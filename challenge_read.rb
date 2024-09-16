require './config/environment'

# Display all products
Product.all.each do |product|
  puts "ID: #{product.id}"
  puts "Name: #{product.name}"
  puts "Description: #{product.description}"
  puts "Price: #{product.price}"
  puts "Stock Quantity: #{product.stock_quantity}"
  puts "---------------------------"
end
