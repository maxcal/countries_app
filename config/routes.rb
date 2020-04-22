Rails.application.routes.draw do
  resources :countries, only: [:index] do
    post :import, on: :collection
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
