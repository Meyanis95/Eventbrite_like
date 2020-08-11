Rails.application.routes.draw do
  get '/', to: 'events#index'
  get 'static_pages/index'
  get 'static_pages/secret'
  get 'users/show', to: 'users#show'
  resources :events
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
