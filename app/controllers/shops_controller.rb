class ShopsController < ApplicationController

  def index
    # shop geolocation set-up
    @shops = Shop.where.not(latitude: nil, longitude: nil)

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

  private

  def reset_cart(id)
    session[:carts] = {} unless id == session[:carts].keys.first.to_s
  end
end
