Rails.application.routes.draw do
  resources :bookings
  devise_for :users
  resources :lessons do
    collection do
      get :your
    end
  end
  resources :profiles 
  get 'profile', to: 'profiles#current'
  resources :categories
  get '*path' => redirect('/')
  root 'categories#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
