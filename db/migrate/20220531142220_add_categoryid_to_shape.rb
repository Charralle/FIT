class AddCategoryidToShape < ActiveRecord::Migration[7.0]
  def change
    add_column :shapes, :category_id, :integer
  end
end
