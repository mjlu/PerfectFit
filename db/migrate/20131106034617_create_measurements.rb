class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.integer :product_id
      t.string :color
      t.string :gender
      t.integer :inseam
      t.integer :waist
      t.integer :rise
      t.integer :hips
      t.integer :height
      t.integer :weight

      t.timestamps
    end
  end
end
