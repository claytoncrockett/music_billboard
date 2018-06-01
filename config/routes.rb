Rails.application.routes.draw do
  root 'charts#index'
  root 'static_pages#home'

  resources :artists do
    resources :songs
  end

  resources :charts do
    resources :songs
  end
end
