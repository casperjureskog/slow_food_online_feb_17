Rails.application.routes.draw do

  root controller: :index, action: :index
  post '/', controller: :index, action: :select_category, as: :select_category
  resources :restaurants, only: [:show, :new, :create] do
    resources :menus, only: [:show]
  end
end
