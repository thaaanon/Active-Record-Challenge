class Province < ActiveRecord::Base
  # Assuming provinces have some attributes; add validations as needed
  validates :name, presence: true
end
