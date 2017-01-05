class AddCompletedAtToTargets < ActiveRecord::Migration
  def change
    add_column :targets, :completed_at, :datetime
  end
end
