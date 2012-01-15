class CreateSkyConditions < ActiveRecord::Migration
  def change
    create_table :sky_conditions do |t|
      t.string :name

      t.timestamps
    end
  end
end
