class Customer < ActiveRecord::Base
  # Assuming customers have some attributes; add validations as needed
  validates :name, presence: true
end
