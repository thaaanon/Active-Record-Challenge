require 'active_record'
require 'sqlite3'

# Establish connection to the database
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/development.sqlite3'
)

# Load all models
Dir[File.join(File.dirname(__FILE__), '../models/*.rb')].each { |file| require file }
