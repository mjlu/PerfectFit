class AddHeightInchToMeasurement < ActiveRecord::Migration
  def change
    add_column :measurements, :height_inch, :integer
  end
end
