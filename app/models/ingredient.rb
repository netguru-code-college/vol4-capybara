class Ingredient < ApplicationRecord

  belongs_to :product
  belongs_to :user
  enum unit: [:kg, :litre]

end
