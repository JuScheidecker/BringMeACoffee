class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @Order = Order.find(params[:id])
  end

  def cart
    @Order = Order.new
  end

  def validate
  end

end
