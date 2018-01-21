Rails.application.routes.draw do
  root 'posts#index'
  resources :posts

  match 'users/:id' => 'users#show', via: :get

  devise_scope :user do
    get "/sign_up" => "user/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end
  devise_for :users
  resources :users, :only => [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
