class OrdersController < ApplicationController
  def index
    # @orders = Order.all
    @orders = current_user.orders
  end

  def show
    @Order = Order.find(params[:id])
    # A setting orderitem pour le show des child_orders
    @orderitem = @Order.orders.first.order_items if @Order.orders.first
  end
end
