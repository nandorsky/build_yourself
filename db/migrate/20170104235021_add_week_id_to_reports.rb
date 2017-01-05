class AddWeekIdToReports < ActiveRecord::Migration
  def change
    add_column :reports, :week_id, :integer
    add_index :reports, :week_id
  end
end
