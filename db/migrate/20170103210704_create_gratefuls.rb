class CreateGratefuls < ActiveRecord::Migration
  def change
    create_table :gratefuls do |t|
      t.text :comment

      t.timestamps null: false
    end
  end
end
