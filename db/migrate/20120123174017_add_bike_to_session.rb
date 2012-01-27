class AddBikeToSession < ActiveRecord::Migration
  def change
    add_column :sessions, :bike_id, :integer
  end
end
