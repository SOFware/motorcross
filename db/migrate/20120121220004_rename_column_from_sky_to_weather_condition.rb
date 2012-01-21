class RenameColumnFromSkyToWeatherCondition < ActiveRecord::Migration
  def up
    rename_column :sessions, :sky_condition_id, :weather_condition_id
  end

  def down
    rename_column :sessions, :weather_condition_id, :sky_condition_id    
  end
end
