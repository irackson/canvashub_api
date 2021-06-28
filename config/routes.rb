Rails.application.routes.draw do
  # resources :images, only: [:index]
  resources :drawings, only: %i[index show create destroy] do
    resources :images, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
