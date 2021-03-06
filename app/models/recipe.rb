class Recipe < ApplicationRecord
  validates :name, :link, presence: true

  enum food_cat: [:breakfast, :diner, :supper, :lunch, :dessert]
  enum diet_cat: [:vegan, :meat, :gluten_free, :vegeratian]

end
