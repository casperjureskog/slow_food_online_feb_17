class IndexController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def select_category
    @restaurants = Restaurant.where(food_style: params[:post][:category])
    render 'index'
  end

  def show
    @cart = ShoppingCart.find_by(user_id: params[:id])
    @rating = Rating.find_by(restaurant_id: @cart.shopping_cart_items[0].item.menu.restaurant.id)
  end
end
