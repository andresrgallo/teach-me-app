Rails.application.routes.draw do
  devise_for :users
  resources :lessons do
    collection do
      get :your
    end
  end
  resources :profiles 
  resources :categories

  root 'categories#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
