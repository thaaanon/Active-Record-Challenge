class Product < ActiveRecord::Base
  belongs_to :category

  # Columns in products table (as per challenge instructions)
  # :id, :name, :description, :price, :stock_quantity, :category_id, :created_at, :updated_at

  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :description, :price, :stock_quantity, presence: true
end
