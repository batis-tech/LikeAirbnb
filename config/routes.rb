Rails.application.routes.draw do
  devise_for :accounts
  resources :properties

  get '/accounts', to:"admin#accounts", as: :accounts
  get 'dashboard/index', to:"dashboard#index", as: :dashboard
  get '/profile/:id', to:"dashboard#profile", as: :profile
  get '/contact/:id', to:"properties#contact", as: :contact
  post '/agent/message', to:"properties#email_agent", as: :email_agent




  root 'public#main'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
