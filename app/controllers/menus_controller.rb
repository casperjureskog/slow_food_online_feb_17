class MenusController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    if session[:cart_id]
      @cartpath = cart_items_path(cart_id: session[:cart_id])
    else
      @cartpath = items_path
    end
  end
end
