require './config/environment'

# Attempt to delete a product by ID
product = Product.find_by(name: "Product A")
if product
  product.destroy
  puts "Product A deleted successfully."
else
  puts "Product A not found."
end
