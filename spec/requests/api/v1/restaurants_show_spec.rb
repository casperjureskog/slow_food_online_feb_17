require 'rails_helper'

RSpec.describe Api::V1::RestaurantsController, type: :request do

  describe 'GET /v1/restaurants' do
    it 'should return all the restaurant´s, menu and dishes' do
      restaurant = create(:restaurant)
      get "/api/v1/restaurants/#{restaurant.id}"

      expected_response = {
        'entries' => [{
          'name' => restaurant.name, 'description' => restaurant.description,
           'id' => restaurant.id, 'food_style' => restaurant.food_style,
           'name' => restaurant.menu.name, 'name' => restaurant.menu.dishes.name,
           'price' => restaurant.menu.dishes.price, 'descripton' => restaurant.menu.dishes.descripton,
           'category' => restaurant.menu.dishes.category
          }]
      }

      expect(response_json).to eq expected_response
      expect(response.status).to eq 200
    end
  end
end
