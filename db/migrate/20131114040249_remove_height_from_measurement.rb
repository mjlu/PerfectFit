class RemoveHeightFromMeasurement < ActiveRecord::Migration
  def up
    remove_column :measurements, :height
  end

  def down
    add_column :measurements, :height, :integer
  end
end
