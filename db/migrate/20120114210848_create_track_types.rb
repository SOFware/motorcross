class CreateTrackTypes < ActiveRecord::Migration
  def change
    create_table :track_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
