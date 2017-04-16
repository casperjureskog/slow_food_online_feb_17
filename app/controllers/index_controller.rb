class IndexController < ApplicationController
  before_action :get_rating

  def index
    @restaurants = Restaurant.all
  end

  def select_category
    @restaurants = Restaurant.where(food_style: params[:post][:category])
    render 'index'
  end

  def show
    @cart = ShoppingCart.find_by(user_id: params[:id])
  end

  def get_rating
    @rating = Rating.find_by(restaurant_id: @cart.shopping_cart_items[0].item.menu.restaurant.id)
  end
end
