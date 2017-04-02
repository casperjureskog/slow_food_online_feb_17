class IndexController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  
end
