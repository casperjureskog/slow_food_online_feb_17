class ShoppingCartsController < ApplicationController
  before_action :get_shopping_cart

  def complete
    @rest = @cart.shopping_cart_items[0].item.menu.restaurant
    @rating = Rating.find_by(restaurant_id: @rest.id)
    @cart.update(paid: 'true')
    session.delete(:cart_id)
  end

  def show

  end

  private

  def get_shopping_cart
    @cart = ShoppingCart.find(session[:cart_id])
  end
end
