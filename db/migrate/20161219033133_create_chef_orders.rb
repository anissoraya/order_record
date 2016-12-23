class CreateChefOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :chef_orders do |t|
      t.integer :chef_id
      t.integer :order_id
      t.integer :amount_cook

      t.timestamps
    end
  end
end
