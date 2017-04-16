class RatingsController < ApplicationController

  def update
    @rating = Rating.find_by(restaurant_id: params[:id])
    @rating.update_rating(params)
    redirect_to  show_path(current_user.id)
  end
end
