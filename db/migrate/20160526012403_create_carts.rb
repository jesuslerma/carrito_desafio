class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.float :total_price
      t.boolean :open
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :carts, :user_id
  end
end
