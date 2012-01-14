class AddColumnsToTrack < ActiveRecord::Migration
  def change
    add_column :tracks, :soil_id, :integer
    add_column :tracks, :track_type_id, :integer
    add_column :tracks, :altitude, :integer, :default => 0 
  end
end
