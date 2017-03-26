Rails.application.routes.draw do
  resources :employee_profile
  resources :employer_profile

  devise_for :users
    namespace :api, defaults:{ format: :json }do
      namespace :v1 do
        post 'users/login'
      #devise_for :users
        resources :users, :only => [:show, :create,:login]
      end
    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
