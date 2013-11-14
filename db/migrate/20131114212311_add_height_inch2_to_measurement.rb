class AddHeightInch2ToMeasurement < ActiveRecord::Migration
  def change
    add_column :measurements, :height_inch2, :integer
  end
end
