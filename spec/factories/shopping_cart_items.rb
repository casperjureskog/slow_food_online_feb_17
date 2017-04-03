FactoryGirl.define do
 factory :shopping_cart_item do
   quantity 1
   price_cents 25
   price_currency "SEK"
   association :shopping_cart
 end
end
