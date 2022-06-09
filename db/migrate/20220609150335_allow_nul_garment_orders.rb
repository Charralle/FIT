class AllowNulGarmentOrders < ActiveRecord::Migration[7.0]
  def change
    change_column_null :orders, :garment_id, true
  end
end
