require 'rails_helper'

RSpec.describe Api::V1::ShoppingCartsController, type: :request do
  let(:restaurant) { create(:restaurant) }
  let(:menu) { create(:menu, restaurant: restaurant) }
  let!(:dish) { create(:dish, menu: menu, name: 'kebbabs' , price: '32.99') }
  let!(:shopping_cart) { create(:shopping_cart)}
  before do
    shopping_cart.add(dish, dish.price)
  end

  describe 'GET /v1/shopping_carts' do
    it 'should return the cart id and paid status and Shopping cart items' do
      get "/api/v1/shopping_carts/#{shopping_cart.id}"
      expected_response =
           {
            id: shopping_cart.id,
            paid: false,
            shopping_cart_items:
                      [{
                         name: 'kebbabs' ,
                         price: '32.99' ,
                      }]
            }
      expect(response_json).to eq JSON.parse(expected_response.to_json)
      expect(response.status).to eq 200
    end
    
    it 'should render error message on failure' do
      get '/api/v1/shopping_carts/9999999'
      expected_response = {message: "Couldn't find ShoppingCart with 'id'=9999999"}
      expect(response_json).to eq JSON.parse(expected_response.to_json)
      expect(response.status).to eq 404
    end
  end
end
