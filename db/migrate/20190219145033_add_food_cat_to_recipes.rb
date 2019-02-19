class AddFoodCatToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :food_cat, :integer
  end
end
