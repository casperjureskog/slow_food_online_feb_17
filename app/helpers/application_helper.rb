module ApplicationHelper

  def shopping_cart_message
    count = current_cart.shopping_cart_items.count
    "You have #{count} #{'item'.pluralize(count)} in your order."
  end


  private

  def current_cart
    if session[:cart_id]
      ShoppingCart.find(session[:cart_id])
    end
  end
end
