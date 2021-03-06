Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: {format: 'json'} do
      resources :concesses 
      resources :vehicles
      resources :comments
      mount_devise_token_auth_for 'User', at: 'auth'     
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
