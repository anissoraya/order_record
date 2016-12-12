class ChangeDataTypeForOrderDate < ActiveRecord::Migration[5.0]
  def up
    change_column :orders, :order_date, :datetime
  end
  def down
    change_column :orders, :order_date, :date
  end
end
