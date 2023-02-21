class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.string :product_name, null: false
      t.string :category, null: false
      t.float :buying_price, null: false
      t.integer :quantity, null: false
      t.integer :unit, null: false
      t.datetime :expiry_date, null: false
      t.integer :threshold_value, null: false
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
