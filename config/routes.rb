Rails.application.routes.draw do
  get 'hangouts/index'
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :messages, only: [:create]
  # Defines the root path route ("/")
  root "hangouts#index"

end
