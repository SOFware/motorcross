class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :name
      t.integer :rider_id

      t.timestamps
    end
  end
end
