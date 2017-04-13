require 'rails_helper'

RSpec.describe Api::V1::ShoppingCartsController, type: :request do
  let(:restaurant) { create(:restaurant, name: 'KebabHut') }
  let(:menu) { create(:menu, restaurant: restaurant) }
  let!(:dish) { create(:dish, menu: menu) }
  let!(:shopping_cart) { create(:shopping_cart)}
  before do
    shopping_cart.add(dish, dish.price)
  end

  describe 'GET /v1/shopping_carts' do
    it 'should return the cart id and paid status and Shopping cart items' do
      get "/api/v1/shopping_cart/#{shopping_cart.id}"



      expected_response =
           {
            id: shopping_cart.id,
            paid: false,
            shopping_cart_items:
                      [{
                         name: shopping_cart_items.item.name,
                         price: shopping_cart_items.item.price,
                     }]
            }

    expect(response_json).to eq JSON.parse(expected_response.to_json)
    expect(response.status).to eq 200
  end
end
end
