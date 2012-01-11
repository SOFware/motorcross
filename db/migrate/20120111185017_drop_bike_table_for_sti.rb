class DropBikeTableForSti < ActiveRecord::Migration
  def up
    drop_table :bikes
  end

  def down
    create_table :bikes do |t|
      t.string :manufacturer
      t.string :model
      t.integer :rider_id

      t.timestamps
    end
  end
end
