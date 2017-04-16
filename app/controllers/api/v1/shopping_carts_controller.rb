class Api::V1::ShoppingCartsController < ApplicationController
  def show
    begin
      @cart = ShoppingCart.find(params[:id])
    rescue => error
      render json: { message: error }, status: 404
    end
  end
end
