class CreateItemOrders < ActiveRecord::Migration
  def change
    create_table :item_orders do |t|
      t.integer :party_id
      t.integer :dish_id
      t.integer :dish_quantity
      t.timestamps
    end
  end
end
