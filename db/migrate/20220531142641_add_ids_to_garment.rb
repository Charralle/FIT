class AddIdsToGarment < ActiveRecord::Migration[7.0]
  def change
    add_column :garments, :user_id, :integer
    add_column :garments, :category_id, :integer
    add_column :garments, :shape_id, :integer
    add_column :garments, :fabric_id, :integer
    add_column :garments, :detail_id, :integer
  end
end
