require_relative 'config/environment'

# Create products
Product.create(name: "Product A", description: "Description for Product A", price: 10.00, stock_quantity: 100)
Product.create(name: "Product B", description: "Description for Product B", price: 20.00, stock_quantity: 200)
Product.create(name: "Product C", description: "Description for Product C", price: 30.00, stock_quantity: 300)

# Output created products
puts "Created products:"
Product.all.each do |product|
  puts "#{product.name}: #{product.description}, Price: #{product.price}, Stock Quantity: #{product.stock_quantity}"
end
