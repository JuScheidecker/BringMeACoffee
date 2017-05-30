class Order < ApplicationRecord
  belongs_to :users
  has_many :order_items

  has_many :child_orders
  has_many :orders, through: :child_orders, foreign_key: "main_order_id"
  belongs_to :main_order, through: :child_orders
end


