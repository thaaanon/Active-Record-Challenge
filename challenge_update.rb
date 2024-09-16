require './config/environment'

# Update a product by ID
product = Product.find_by(name: "Product A")
if product
  product.update(price: 15.00, stock_quantity: 150)
  puts "Product A updated successfully."
else
  puts "Product A not found."
end
