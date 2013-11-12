class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :merchant
      t.string :name
      t.string :style

      t.timestamps
    end
  end
end
