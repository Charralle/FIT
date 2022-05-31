class CreateDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :details do |t|
      t.string :name
      t.string :description
      t.string :code

      t.timestamps
    end
  end
end
