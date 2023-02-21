class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :supplier_name, null: false
      t.string :product, null: false
      t.string :category, null: false
      t.string :buying_price, null: false
      t.string :contact_number, null: false
      t.string :delivery_status, null: false
      t.string :email, null: false

      t.timestamps
    end
  end
end
