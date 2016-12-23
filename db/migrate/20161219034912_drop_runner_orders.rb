class DropRunnerOrders < ActiveRecord::Migration[5.0]
  def up
    drop_table :runner_orders
  end
  def down
    create_table :runner_orders do |t|
      t.integer :packaging_quantity
      t.integer :order_id
      t.integer :runner_id

      t.timestamps
    end
  end
end
