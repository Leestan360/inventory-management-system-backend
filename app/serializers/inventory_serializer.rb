class InventorySerializer < ActiveModel::Serializer
  attributes :id, :product_name, :product_id, :category, :buying_price, :quantity, :unit, :expiry_date, :threshold_value
end
