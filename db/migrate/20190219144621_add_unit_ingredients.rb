class AddUnitIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :unit, :integer
  end
end
