class RestaurantsController < ApplicationController

  def new
    @restaurants = Restaurant.new
  end

  def create
    @restaurants = Restaurant.new restaurant_params

    if @restaurants.save
      flash[:notice] = "Restaurant successfully created"
      redirect_to new_restaurant_path
    end
  end

  private

  def restaurant_params
   params.require(:restaurant).permit(:name, :street, :zip_code, :city, :food_style)
  end
end
