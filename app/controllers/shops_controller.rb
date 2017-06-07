class ShopsController < ApplicationController

  def index
    # shop geolocation set-up
    if params[:address] == nil
      @shops = Shop.all
    else
      if params[:address] != ""
        @shops = Shop.near(params[:address], 0.5)
      else
        @shops = Shop.where.not(latitude: nil, longitude: nil)
      end
    end


    @hash = Gmaps4rails.build_markers(@shops) do |shop, marker|
      marker.lat shop.latitude
      marker.lng shop.longitude
      marker.infowindow render_to_string(partial: "/shops/map_box", locals: { shop: shop })
    end
  end

  def show
    @shop = Shop.find(params[:id])
    reset_cart(params[:id]) unless session[:carts] == nil

    # shop geolocation set-up
    @shop_coordinates = { lat: @shop.latitude, lng: @shop.longitude }

    @hash = Gmaps4rails.build_markers(@shop) do |shop, marker|
      marker.lat shop.latitude
      marker.lng shop.longitude
    end
  end

    def cart
    @shop = Shop.find(params[:id])

    if session[:carts].nil? || session[:carts].empty?
      @item_data = nil
    else
      @item_data = session[:carts][params[:id]].to_a
    end

    @orders = Order.all # TODO : available_orders
  end

  private

  def reset_cart(id)
    session[:carts] = {} unless id == session[:carts].keys.first.to_s
    session[:numbcart] = {} unless id == session[:carts].keys.first.to_s#Rom1: remet cette variable de session à zéro si on change de shop
  end

  def shop_params
  params.require(:shop).permit(:name, :address, :latitude, :longitude, :photo)
  end
end
