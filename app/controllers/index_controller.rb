class IndexController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def create
    binding.pry
  end
end
