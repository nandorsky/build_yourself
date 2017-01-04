class AddWeekIdToDays < ActiveRecord::Migration
  def change
    add_column :days, :week_id, :integer
    add_index :days, :week_id
  end
end
