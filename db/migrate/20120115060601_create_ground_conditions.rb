class CreateGroundConditions < ActiveRecord::Migration
  def change
    create_table :ground_conditions do |t|
      t.string :name

      t.timestamps
    end
  end
end
