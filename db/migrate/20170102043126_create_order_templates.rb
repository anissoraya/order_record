class CreateOrderTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :order_templates do |t|
      t.string :day
      t.references :customer, foreign_key: true
      t.integer :order_no
      t.time :time_order
      t.references :runner, foreign_key: true
      t.references :chef, foreign_key: true

      t.timestamps
    end
  end
end
