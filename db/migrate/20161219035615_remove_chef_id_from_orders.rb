class RemoveChefIdFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :chef_id, :integer
  end
end
