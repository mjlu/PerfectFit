class AddHeightinchesToMeasurement < ActiveRecord::Migration
  def change
    add_column :measurements, :heightinches, :integer
  end
end
