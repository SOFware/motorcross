class RemoveTrackTypeFromTracks < ActiveRecord::Migration
  def up
    remove_column :tracks, :track_type
  end

  def down
    add_column :tracks, :track_type, :string
  end
end
