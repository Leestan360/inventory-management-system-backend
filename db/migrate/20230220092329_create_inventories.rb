class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.string :product_name
      t.integer :product_id
      t.string :category
      t.float :buying_price
      t.integer :quantity
      t.integer :unit
      t.datetime :expiry_date
      t.integer :threshold_value

      t.timestamps
    end
  end
end
