# challenge_update.rb
require_relative 'ar'
require_relative 'models/product'

products = Product.where('stock_quantity > ?', 40)
products.each do |product|
  product.stock_quantity += 1
  product.save
end
