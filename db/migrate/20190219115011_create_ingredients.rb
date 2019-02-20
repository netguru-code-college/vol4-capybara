class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.date :exp_date
      t.integer :quantity

      t.timestamps
    end
  end
end
