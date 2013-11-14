class AddHeightFeetToMeasurement < ActiveRecord::Migration
  def change
    add_column :measurements, :height_feet, :integer
  end
end
