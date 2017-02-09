Rails.application.routes.draw do
  devise_for :users
  resources :users
  get 'static_pages/index'

  resources :products
  get 'static_pages/register'

  get 'static_pages/login'

  get 'static_pages/shop'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  # root 'static_pages#index'

  root 'static_pages#landing_page'
  
  post 'static_pages/thank_you'

  resources :orders, only: [:index, :show, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
