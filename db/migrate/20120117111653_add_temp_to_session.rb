class AddTempToSession < ActiveRecord::Migration
  def change
    add_column :sessions, :temp, :integer
  end
end
