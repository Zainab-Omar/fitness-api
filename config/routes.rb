Rails.application.routes.draw do
  resources :bmis
  
  resources :users do
    resources :exercises
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
