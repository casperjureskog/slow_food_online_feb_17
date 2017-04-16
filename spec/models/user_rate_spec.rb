require 'rails_helper'

RSpec.describe Userrate, type: :model do
 describe 'DB table' do
   it { is_expected.to have_db_column :check }
 end

 describe 'Validations' do
   it { is_expected.to validate_presence_of :ckeck }
 end

 describe 'Associations' do
   it { is_expected.to have_one :user }
   it { is_expected.to have_one :rating }
 end

 describe 'Factory' do
   it 'has a valid factory' do
     expect(create(:Userrate)).to be_valid
   end
 end
end
