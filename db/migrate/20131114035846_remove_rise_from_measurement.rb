class RemoveRiseFromMeasurement < ActiveRecord::Migration
  def up
    remove_column :measurements, :rise
  end

  def down
    add_column :measurements, :rise, :integer
  end
end
