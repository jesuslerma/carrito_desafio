class AddCartIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :cart_id, :integer
    add_index :orders, :cart_id
  end
end
