class CreateRunners < ActiveRecord::Migration[5.0]
  def up
    create_table :runners do |t|
      t.string :name
      t.string :phone

      t.timestamps
    end
  end

  def down
    drop_table :runners
  end
end
