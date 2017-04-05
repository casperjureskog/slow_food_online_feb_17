class MenusController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @mains = @restaurant.menu.dishes.where(category: 'Main course')
    @starters = @restaurant.menu.dishes.where(category: 'Starters')
    @dessert = @restaurant.menu.dishes.where(category: 'Dessert')
    if session[:cart_id]
      @cart = ShoppingCart.find(session[:cart_id])
      @cart_nr = @cart.shopping_cart_items.count
    else
      @cart_nr = 0
    end
  end
end
