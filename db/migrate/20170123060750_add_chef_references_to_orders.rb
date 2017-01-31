class AddChefReferencesToOrders < ActiveRecord::Migration[5.0]
  def self.up
    add_reference :orders, :chef, foreign_key: true
  end

  def self.down
    remove_column :orders, :chef_id
  end
end
