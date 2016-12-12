class AddChefReferencesToOrders < ActiveRecord::Migration[5.0]
  def up
    add_reference :orders, :chef, foreign_key: true
  end
  def down
    remove_reference :orders, :chef
  end
end
