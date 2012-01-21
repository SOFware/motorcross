class ChangeSkyConditionToWeather < ActiveRecord::Migration
  def up
    rename_table :sky_conditions, :weather_conditions
  end

  def down
    rename_table :weather_conditions, :sky_conditions
  end
end
