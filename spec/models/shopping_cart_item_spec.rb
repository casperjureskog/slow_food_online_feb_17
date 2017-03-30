require 'rails_helper'

RSpec.describe ShoppingCartItem, type: :model do
 it 'should have a valid factory' do
   expect(create(:shopping_cart_item)).to be_valid
 end
end
