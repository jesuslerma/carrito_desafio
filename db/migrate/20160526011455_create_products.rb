class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :stock
      t.text :photo
      t.references :category, index: true, foreign_key: true
      t.float :price
      t.references :store, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
