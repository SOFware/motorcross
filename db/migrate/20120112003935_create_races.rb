class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.date :date
      t.integer :track_id

      t.timestamps
    end
  end
end
