Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  
  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :dose, only: [:new, :create]
  end
  resources :ingredient, only: [:index, :show]

end
