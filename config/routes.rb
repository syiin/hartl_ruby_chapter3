Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help' #,as: helf
  get  '/about',   to: 'static_pages#about'
  get  '/contact_us', to: 'static_pages#contact_us'
  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: 'users#create'
  resources :users
end
