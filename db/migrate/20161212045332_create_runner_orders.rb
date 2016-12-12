class CreateRunnerOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :runner_orders do |t|
      t.integer :order_id
      t.integer :runner_id
      t.integer :packaging_quantity

      t.timestamps
    end
  end
end
