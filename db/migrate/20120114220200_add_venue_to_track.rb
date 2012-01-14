class AddVenueToTrack < ActiveRecord::Migration
 
   def change
     add_column :tracks, :venue_id, :integer
  end
end
