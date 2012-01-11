class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :manufacturer
      t.string :model
      t.integer :rider_id

      t.timestamps
    end
  end
end
