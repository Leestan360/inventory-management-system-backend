class OrderSerializer < ActiveModel::Serializer
  attributes :id, :product_name, :category, :order_value, :quantity, :unit, :buying_price, :date_of_delivery
  has_one :inventory
end
