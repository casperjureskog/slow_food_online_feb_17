json.id @cart.id
json.paid @cart.paid
json.shopping_cart_items do
  json.array! @cart.shopping_cart_items.each do |cart|
      json.name cart.item.name
      json.price cart.item.price
  end
end
