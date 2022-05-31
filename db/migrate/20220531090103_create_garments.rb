class CreateGarments < ActiveRecord::Migration[7.0]
  def change
    create_table :garments do |t|
      t.boolean :selected

      t.timestamps
    end
  end
end
