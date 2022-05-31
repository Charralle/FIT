class AddShapeidToFabric < ActiveRecord::Migration[7.0]
  def change
    add_column :fabrics, :shape_id, :integer
  end
end
