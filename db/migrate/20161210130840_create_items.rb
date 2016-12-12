class CreateItems < ActiveRecord::Migration[5.0]
  def up
    create_table :items do |t|
      t.string :name
      t.float :price

      t.timestamps
    end
  end
  def down
    drop_table :items
  end
end
