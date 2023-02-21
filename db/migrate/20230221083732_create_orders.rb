class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :product_name, null: false
      t.string :category, null: false
      t.integer :order_value, null: false
      t.integer :quantity, null: false
      t.integer :unit, null: false
      t.float :buying_price, null: false
      t.datetime :date_of_delivery, null: false
      t.references :inventory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
