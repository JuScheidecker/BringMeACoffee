class OrdersController < ApplicationController
  def index
    # @orders = Order.all
    @orders = current_user.orders
  end

  def show
    @Order = Order.find(params[:id])
  end
end
