class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items

  has_many :main_orders_association, class_name: "ChildOrder", foreign_key: "order_id"
  has_many :main_orders, through: :main_orders_association, source: :main_order

  has_many :child_orders_association, class_name: "ChildOrder", foreign_key: "main_order_id"
  has_many :orders, through: :child_orders_association, source: :order

  def main_order
    main_orders.first
  end

  def total_price
    self.order_items.map {|x| x.item.price}.reduce(:+)
  end
end


