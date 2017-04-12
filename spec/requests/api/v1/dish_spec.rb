require 'rails_helper'

RSpec.describe Api::V1::RestaurantsController, type: :request do

  describe 'GET /v1/dishes' do
    it 'should return all the dishes name,description,category and price' do
      restaurant = create(:restaurant)
      menu = create(:menu ,:restaurant restaurant)
      creat(:dish , :menu menu)
      get "/api/v1/restaurants/#{restaurant}/menu/#{menu}/dish"

      expected_response = {
        'entries' => [{
          'name' => restaurant.menu.dishes.name, 'price' => restaurant.menu.dishes.price,
          'category' => restaurant.menu.dishes.category, 'description' => restaurant.menu.dishes.description
          }]
      }

      expect(response_json).to eq expected_response
      expect(response.status).to eq 200
    end
  end
end
