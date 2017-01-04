class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :target
      t.string :status
      t.integer :day_id

      t.timestamps null: false
    end
    add_index :targets, :day_id
  end
end
