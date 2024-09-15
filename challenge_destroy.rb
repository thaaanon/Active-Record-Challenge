# challenge_destroy.rb
require_relative 'ar'
require_relative 'models/product'

product_to_delete = Product.find_by(name: 'New Product 1')
product_to_delete.destroy if product_to_delete
