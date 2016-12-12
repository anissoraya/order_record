class CreateCustomers < ActiveRecord::Migration[5.0]
  def up
    create_table :customers do |t|
      t.string :name
      t.string :company
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
  def down
    drop_table :customers
  end
end
