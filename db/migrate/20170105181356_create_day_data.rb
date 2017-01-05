class CreateDayData < ActiveRecord::Migration[5.0]
  def change
    create_table :day_data do |t|
      t.string :name
    end
  end
end
