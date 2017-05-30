class Item < ApplicationRecord
  belongs_to :shop
  has_many :order_items
end
