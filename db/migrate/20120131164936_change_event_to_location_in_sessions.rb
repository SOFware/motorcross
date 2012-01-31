class ChangeEventToLocationInSessions < ActiveRecord::Migration
  def up
    rename_column :sessions, :event_id, :venue_id
  end

  def down
    rename_column :sessions, :venue_id, :event_id
  end
end
