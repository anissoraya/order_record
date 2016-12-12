class CreateOrders < ActiveRecord::Migration[5.0]
  def up
    create_table :orders do |t|
      t.integer :item_id
      t.integer :quantity
      t.integer :customer_id
      t.date :order_date
      t.string :order_day

      t.timestamps
    end
  end
  def down
    drop_table :orders
  end
end
