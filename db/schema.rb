# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_21_083732) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inventories", force: :cascade do |t|
    t.string "product_name", null: false
    t.string "category", null: false
    t.float "buying_price", null: false
    t.integer "quantity", null: false
    t.integer "unit", null: false
    t.datetime "expiry_date", null: false
    t.integer "threshold_value", null: false
    t.bigint "supplier_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_inventories_on_supplier_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "product_name", null: false
    t.string "category", null: false
    t.integer "order_value", null: false
    t.integer "quantity", null: false
    t.integer "unit", null: false
    t.float "buying_price", null: false
    t.datetime "date_of_delivery", null: false
    t.bigint "inventory_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_id"], name: "index_orders_on_inventory_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "supplier_name", null: false
    t.string "product", null: false
    t.string "category", null: false
    t.string "buying_price", null: false
    t.string "contact_number", null: false
    t.string "delivery_status", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "inventories", "suppliers"
  add_foreign_key "orders", "inventories"
end
