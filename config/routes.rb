Rails.application.routes.draw do
  root 'posts#index'
  resources :posts

  devise_scope :user do
    get "/sign_up" => "user/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end

  devise_for :users
  resources :users, only: [:show]

  match 'users/:id' => 'users#show', via: :get
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
