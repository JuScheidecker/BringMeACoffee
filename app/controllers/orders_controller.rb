class OrdersController < ApplicationController

  def index
    # @orders = Order.all
    @orders = current_user.orders
  end

  def show

    @Order = Order.find(params[:id])

    # Setting orderitem pour le show des child_orders
    @orderitem = @Order.orders.first.order_items if @Order.orders.first
    # Setting shop_id pour récupérer l'id du shop à partir de l'order
    @orders = Order.all
    @shop_id = @orders.first.order_items.first.item.shop_id

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
    @shop = Shop.find(session[:carts].keys.first.to_i)
    @item_data = session[:carts][params[:id]].to_a


    @orders = Order.all
    @shop_id = @orders.first.order_items.first.item.shop_id


    respond_to do |format|
      format.html { render 'orders/cart'}
    end
  end

  def create
    # order => {delivery_type: "", item_ids: [], child_order_ids: []}

    # Creation de l'order
    @order = Order.new(cart_params)
    @order.user = current_user
    @order.status = @order.delivery_type == true

    # Creation des order items
    shop_id = session[:carts].keys.first
    shop_cart = session[:carts][shop_id]
    shop_cart.each do |item_id, number_of_item|
      number_of_item.to_i.times do
        @order_item = @order.order_items.build(item_id: item_id.to_i)
      end
    end

    # try sauvegarde
    if @order.save
      # Destroy the cart
      session[:carts] = nil

      # Creating child orders
      child_order_id = params[:order][:child_order_id]
      if !child_order_id.blank?
        ChildOrder.create(main_order_id: @order.id, order_id: child_order_id.to_i)
      end

      redirect_to order_path(@order)
    else
      render :cart
    end
  end


  def cart_params
    params.require(:order).permit(:delivery_type)
  end

end
