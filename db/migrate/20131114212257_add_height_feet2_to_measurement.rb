class AddHeightFeet2ToMeasurement < ActiveRecord::Migration
  def change
    add_column :measurements, :height_feet2, :integer
  end
end
