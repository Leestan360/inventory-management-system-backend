class Inventory < ApplicationRecord
  belongs_to :supplier
  has_many :orders
end
