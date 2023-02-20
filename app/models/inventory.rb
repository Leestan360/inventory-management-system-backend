class Inventory < ApplicationRecord

  validates :product_name, presence: true
  validates :product_id, presence: true
  validates :category, presence: true
  validates :buying_price, presence: true
  validates :quantity, presence: true
  validates :unit, presence: true
  validates :expiry_date, presence: true
  vlidates :threshold_value, presence: true

end
