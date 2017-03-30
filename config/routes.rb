Rails.application.routes.draw do
  Rails.application.routes.draw do
    root 'users#index'
  end
  resources :users do
    resources :followers
    resources :followings
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
