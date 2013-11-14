class AddImageToMeasurement < ActiveRecord::Migration
  def change
    add_column :measurements, :image, :string
  end
end
