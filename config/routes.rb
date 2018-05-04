Rails.application.routes.draw do
  resources :lessons do
    collection do
      get :your
    end
  end
  resources :profiles 
  resources :categories

  devise_for :users
  root 'categories#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
