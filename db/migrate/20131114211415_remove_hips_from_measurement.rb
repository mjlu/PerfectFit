class RemoveHipsFromMeasurement < ActiveRecord::Migration
  def up
    remove_column :measurements, :hips
  end

  def down
    add_column :measurements, :hips, :integer
  end
end
