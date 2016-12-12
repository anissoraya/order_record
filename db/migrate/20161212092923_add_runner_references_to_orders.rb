class AddRunnerReferencesToOrders < ActiveRecord::Migration[5.0]
  def up
    add_reference :orders, :runner, foreign_key: true
  end
  def down
    remove_reference :orders, :runner 
  end
end
