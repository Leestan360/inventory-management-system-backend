class SupplierSerializer < ActiveModel::Serializer
  attributes :id, :supplier_name, :product, :category, :buying_price, :contact_number, :delivery_status, :email
  has_many :orders, through: :inventories
end
