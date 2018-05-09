Rails.application.routes.draw do
  resources :bookings do
    collection do
      get :your
    end
  end

  devise_for :users

  resources :lessons do
    collection do
      get :your
    end
  end

  # Static pages routes
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'

  resources :profiles do
    resources :reviews
  end

  get 'profile', to: 'profiles#current'

  resources :categories

  resources :charges

  # if people type wrong url, redirect to root
  get '*path' => redirect('/')

  root 'categories#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
