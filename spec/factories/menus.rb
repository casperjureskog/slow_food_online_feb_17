FactoryGirl.define do
  factory :menu do
    name "Pizzor"
    association :restaurant
  end
end
