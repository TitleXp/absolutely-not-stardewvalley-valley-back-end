class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :farm, null: false, foreign_key: true
      t.string :name
      t.string :category
      t.string :description
      t.string :picture_link
      t.integer :price
      t.integer :stock

      t.timestamps
    end
  end
end
