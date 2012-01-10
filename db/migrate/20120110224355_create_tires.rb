class CreateTires < ActiveRecord::Migration
  def change
    create_table :tires do |t|
      t.string :manufacturer
      t.string :model
      t.integer :rider_id

      t.timestamps
    end
  end
end
