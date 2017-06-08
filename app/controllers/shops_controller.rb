class ShopsController < ApplicationController

  before_action :store_current_location, :unless => :devise_controller?

  skip_before_action :authenticate_user!, only: [ :index, :show, :cart, :additem, :removeitem ]

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

    # setting de params pour récupérer l'adresse à partir de l'autocomplete
    @params = params[:address]
    # ajout d'un nouveau marqueur correpondant aux params
    #if params[:address] != ""
       #lat = Geocoder.search(params[:address]).first.geometry['location']['lat']
       #lng = Geocoder.search(params[:address]).first.geometry['location']['lng']
    #   icon = "http://maps.google.com/mapfiles/ms/icons/" + 'green' + ".png"

    #   @hash.push({lat: lat, lng: lng,})
    #end
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
    @params = params[:address]
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

  def additem
    session[:carts].first[1][params.first[0]] += 1
    @cart = session[:carts]

    respond_to do |format|
      format.json { render json: session[:carts] }
    end
  end

  def removeitem
    session[:carts].first[1][params.first[0]] -= 1
    @cart = session[:carts]

    respond_to do |format|
      format.json { render json: session[:carts] }
    end
  end

  private

  def reset_cart(id)
    session[:carts] = {} unless id == session[:carts].keys.first.to_s
    session[:numbcart] = {} unless id == session[:carts].keys.first.to_s#Rom1: remet cette variable de session à zéro si on change de shop
  end

  def shop_params
  params.require(:shop).permit(:name, :address, :latitude, :longitude, :photo)
  end

  def store_current_location
    store_location_for(:user, request.url)
  end
end
