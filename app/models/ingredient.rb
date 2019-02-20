class Ingredient < ApplicationRecord

  belongs_to :product

  enum unit: [:kg, :litre]

end
