class ChangeNameOfSessionTypeColumn < ActiveRecord::Migration

  def change
      rename_column :sessions, :session_type, :session_type_id
  end
end
