class AddShapeidToDetail < ActiveRecord::Migration[7.0]
  def change
    add_column :details, :shape_id, :integer
  end
end
