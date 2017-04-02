class IndexController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def create
    @index = Index.new
  end
end
