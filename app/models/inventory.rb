class Inventory < ApplicationRecord
  belongs_to :supplier
  has_one :order
end
