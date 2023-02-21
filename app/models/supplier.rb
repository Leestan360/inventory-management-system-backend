class Supplier < ApplicationRecord
  has_many :inventories
  has_many :orders, through: :inventories

  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  
end
