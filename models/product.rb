# models/product.rb
class Product < ActiveRecord::Base
  belongs_to :category

  validates :name, presence: true, uniqueness: true, length: { minimum: 4 }
  validates :price, :stock_quantity, presence: true
end
