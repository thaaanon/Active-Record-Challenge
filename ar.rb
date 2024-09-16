require 'active_record'
require 'sqlite3'
require 'faker'

# Establish connection to the database
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/development.sqlite3'
)

# Define models
require_relative 'models/category'
require_relative 'models/customer'
require_relative 'models/product'
require_relative 'models/province'

# Example of how to use the models
# Uncomment these lines to see example operations
# Category.create(name: 'Electronics')
# Customer.create(name: 'John Doe')
# Province.create(name: 'Ontario')
# Product.create(name: 'Product A', description: 'Description for Product A', price: 10.00, stock_quantity: 100, category_id: 1)
