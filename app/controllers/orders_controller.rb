class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
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

    respond_to do |format|
      format.html { render 'orders/cart'}
    end
  end

  def validate

  end

end
