class Order < ApplicationRecord
  belongs_to :users
  has_many :order_items
  has_many :child_orders, class_name: 'Order', foreign_key: 'main_order_id'
  belongs_to :main_order, class_name: 'Order'
end
