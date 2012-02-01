class ChangeYearToStringInEquipment < ActiveRecord::Migration
  def up
    change_column :equipment, :year, :string
  end

  def down
    change_column :equipment, :year, :integer    
  end
end
