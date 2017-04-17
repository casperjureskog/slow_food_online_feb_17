class IndexController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def select_category
    @restaurants = Restaurant.where(food_style: params[:post][:category])
    render 'index'
  end

  def show
    @cart = ShoppingCart.where(user_id: current_user.id,paid: 'true')
    @rating = Rating.first
    @usr = Userrate.find_by(user_id: current_user.id)

  end
end
