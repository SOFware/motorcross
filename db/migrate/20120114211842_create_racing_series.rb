class CreateRacingSeries < ActiveRecord::Migration
  def change
    create_table :racing_series do |t|
      t.string :name

      t.timestamps
    end
  end
end
