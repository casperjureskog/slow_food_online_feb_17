class MenusController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu = Menu.find_by(restaurant: @restaurant)
  end

end
