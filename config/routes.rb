Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :bmis
    end
  end
  
  namespace :api do
    namespace :v1 do
      resources :users do
        get '/profile', to: 'users#profile'
        resources :exercises
      end
    end
  end

  namespace :api do
    namespace :v1 do
      resources :auth
    end
  end
  
end
