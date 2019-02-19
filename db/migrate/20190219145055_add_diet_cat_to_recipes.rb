class AddDietCatToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :diet_cat, :integer
  end
end
