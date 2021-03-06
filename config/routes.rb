Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :garments, only: [:new, :create, :index, :show, :update, :destroy]
  get '/garments/:id/edit_shape', to: 'garments#edit_shape', as: :garment_edit_shape
  get '/garments/:id/edit_fabric', to: 'garments#edit_fabric', as: :garment_edit_fabric
  get '/garments/:id/edit_detail', to: 'garments#edit_detail', as: :garment_edit_detail
  get '/garments/:id/edit_selected', to: 'garments#edit_selected', as: :garment_edit_selected
  get '/avatar', to: 'garments#avatar', as: :garment_avatar

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
