class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.date :exp_date

      t.timestamps
    end
  end
end
