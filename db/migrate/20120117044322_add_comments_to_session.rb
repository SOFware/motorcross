class AddCommentsToSession < ActiveRecord::Migration
  def change
    add_column :sessions, :session_notes, :text
    add_column :sessions, :tire_notes, :text
    add_column :sessions, :suspension_notes, :text
    add_column :sessions, :gearing_notes, :text
  end
end
