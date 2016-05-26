class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :product, index: true, foreign_key: true
      t.string :user_id
      t.float :price

      t.timestamps null: false
    end
    add_index :orders, :user_id
  end
end
