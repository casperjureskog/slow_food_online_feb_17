class Api::V1::ShoppingCartsController < ApplicationController
  def show
    @cart = ShoppingCart.find(params[:id])
  end
end
