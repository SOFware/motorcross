class DropTiresTableForSti < ActiveRecord::Migration
  def up
    drop_table :tires
  end

  def down
    create_table :tires do |t|
      t.string :manufacturer
      t.string :model
      t.integer :rider_id

      t.timestamps
    end
  end
end
