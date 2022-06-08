class AddPriceToGarments < ActiveRecord::Migration[7.0]
  def change
    add_monetize :garments, :price, currency: { present: false }
  end
end
