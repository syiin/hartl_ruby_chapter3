Rails.application.routes.draw do
  root "static_pages#home"
  #maps to the home action in the controller
  get 'static_pages/home'
  get 'static_pages/help'
  #this automatically creates a helper called static_pages_about_url
  get 'static_pages/about'
  get 'static_pages/contact_us'
end
