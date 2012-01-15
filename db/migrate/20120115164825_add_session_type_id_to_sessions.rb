class AddSessionTypeIdToSessions < ActiveRecord::Migration
  def change
    add_column :sessions, :session_type, :integer
  end
  
end
