class RemoveHeightinchesFromMeasurement < ActiveRecord::Migration
  def up
    remove_column :measurements, :heightinches
  end

  def down
    add_column :measurements, :heightinches, :integer
  end
end
