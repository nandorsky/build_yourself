class AddDayIdToGratefuls < ActiveRecord::Migration
  def change
    add_column :gratefuls, :day_id, :integer
    add_index :gratefuls, :day_id
  end
end
