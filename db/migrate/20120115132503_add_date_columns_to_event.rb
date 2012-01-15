class AddDateColumnsToEvent < ActiveRecord::Migration
  def change
    add_column :events, :begin_date, :date
    add_column :events, :end_date, :date
  end
end
