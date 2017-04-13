class Api::V1::ShoppingCartsController < ApplicationController
  def show
    @cart = ShoppingCart.find(session[:cart_id])
  end
end
