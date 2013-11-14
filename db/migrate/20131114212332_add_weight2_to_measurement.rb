class AddWeight2ToMeasurement < ActiveRecord::Migration
  def change
    add_column :measurements, :weight2, :integer
  end
end
