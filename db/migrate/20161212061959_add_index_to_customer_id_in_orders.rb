class AddIndexToCustomerIdInOrders < ActiveRecord::Migration[5.0]
  def up
    add_index :orders, :customer_id
  end
  def down
    remove_index :orders, :customer_id
  end
end
