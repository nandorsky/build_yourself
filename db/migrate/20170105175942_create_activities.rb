class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :goal
      t.string :name
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :activities, :user_id
  end
end
