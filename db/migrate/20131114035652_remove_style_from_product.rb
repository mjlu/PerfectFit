class RemoveStyleFromProduct < ActiveRecord::Migration
  def up
    remove_column :products, :style
  end

  def down
    add_column :products, :style, :string
  end
end
