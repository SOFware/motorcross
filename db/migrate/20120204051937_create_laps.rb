class CreateLaps < ActiveRecord::Migration
  def change
    create_table :laps do |t|
      t.integer :session_id
      t.integer :tenths
      t.integer :lap_number

      t.timestamps
    end
  end
end
