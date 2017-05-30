class Item < ApplicationRecord
  belongs_to :shops
  has_many :order_items
end
