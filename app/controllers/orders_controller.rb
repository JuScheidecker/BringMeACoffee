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

  def add_to_cart
    session[:carts] = {} unless session[:carts].present?
    session[:carts][params[:id]] = {} unless session[:carts][params[:id]].present?
    session[:carts][params[:id]][params[:item_id]] = session[:carts][params[:id]][params[:item_id]].to_i + 1

    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) }
      format.json { render json: session[:json] }
    end
  end

  def cart
    session[:carts]
    @shop = Shop.find(session[:carts].keys.first.to_i)

    @item_data = session[:carts][params[:id]].to_a


    respond_to do |format|
      format.html { render 'orders/cart'}
    end
  end

  def validate

  end

end
