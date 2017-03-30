class ApplicationController < ActionController::Base
 protect_from_forgery with: :exception
 before_action :create_cart

 protected

 def create_cart
   session[:cart_id] = ShoppingCart.create.id unless session[:cart_id]
 end
end
