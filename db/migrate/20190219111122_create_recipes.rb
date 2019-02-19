class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name, null:false
      t.text :link, null: false
      t.text :photo
      t.text :ingredients

      t.timestamps
    end
  end
end
