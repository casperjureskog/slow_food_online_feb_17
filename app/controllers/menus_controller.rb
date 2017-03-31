class MenusController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @cartpath = items_path
    @cart_nr = ShoppingCart.count
  end
end
