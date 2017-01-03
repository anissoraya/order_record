class RenameDayToDayId < ActiveRecord::Migration[5.0]
  def change
    rename_column :order_templates, :day, :day_data_id
    change_column :order_templates, :day_data_id, :integer
  end

end
