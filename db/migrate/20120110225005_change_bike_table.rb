class ChangeBikeTable < ActiveRecord::Migration
  def up
    rename_column :bikes, :name, :manufacturer
    add_column :bikes, :model, :string
  end

  def down
    remove_column :bikes, :model
    rename_column :bikes, :manufacturer, :name
  end
end
