class AddYearToBikes < ActiveRecord::Migration
  def change
    add_column :equipment, :year, :integer
  end
end
