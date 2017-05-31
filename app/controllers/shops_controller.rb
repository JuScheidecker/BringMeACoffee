class ShopsController < ApplicationController

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
    reset_cart
  end

  private

  def reset_cart
    session[:carts].each do |id, _|
      session[:carts][id] = {} unless id == params[:id]
    end
  end
end
