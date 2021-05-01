Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :days do 
    resources :tasks, only: [:new, :create, :index]
   end 

resources :tasks 
resources :days 
end
