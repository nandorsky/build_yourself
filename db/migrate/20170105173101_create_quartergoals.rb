class CreateQuartergoals < ActiveRecord::Migration
  def change
    create_table :quartergoals do |t|
      t.string :goal
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :quartergoals, :user_id
  end
end
