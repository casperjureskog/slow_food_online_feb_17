require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :street }
    it { is_expected.to have_db_column :zip_code }
    it { is_expected.to have_db_column :city }
    it { is_expected.to have_db_column :food_style }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :street }
    it { is_expected.to validate_presence_of :zip_code }
    it { is_expected.to validate_presence_of :city }
    it { is_expected.to validate_presence_of :food_style }
  end

end
