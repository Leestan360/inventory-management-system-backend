class InventorySerializer < ActiveModel::Serializer
  attributes :id, :product_name, :category, :buying_price, :quantity, :unit, :expiry_date, :threshold_value, :supplier_id
  has_one :supplier
end
