Rails.application.routes.draw do
  root "posts#index"
  get "posts/index"
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :posts, only: [:index, :new, :create, :show]
  resources :users, only: [:index, :new, :create, :show]
  resources :pokemon_statuses, only: [:index, :show]
end
