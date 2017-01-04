class AddUserIdToWeeks < ActiveRecord::Migration
  def change
    add_column :weeks, :user_id, :integer
    add_index :weeks, :user_id
  end
end
