class ShopsController < ApplicationController

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
    reset_cart(params[:id])
  end

  private

  def reset_cart(id)
    session[:carts] = {} unless id == session[:carts].keys.first.to_s
  end
end
