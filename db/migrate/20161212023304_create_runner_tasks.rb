class CreateRunnerTasks < ActiveRecord::Migration[5.0]
  def up
    create_table :runner_tasks do |t|
      t.integer :package_quantity
      t.integer :order_id
      t.integer :runner_id

      t.timestamps
    end
  end
  def down
    drop_table :runner_tasks
  end
end
