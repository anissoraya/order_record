class CreateDayData < ActiveRecord::Migration[5.0]
  def self.up
    create_table :day_data do |t|
      t.string :name

      t.timestamps
    end
  end
  def self.down
    drop_table :day_data
  end
end
