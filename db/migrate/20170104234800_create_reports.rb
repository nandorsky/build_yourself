class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.text :happy
      t.text :big_wins
      t.text :progress
      t.text :lesson

      t.timestamps null: false
    end
  end
end
