class AddDayDataReferencesToOrders < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :day_data, foreign_key: true
  end
end
