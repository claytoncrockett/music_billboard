Rails.application.routes.draw do
  get 'charts/index'
  get 'charts/new'
  get 'charts/show'
  get 'charts/edit'
  get 'songs/index'
  get 'songs/new'
  get 'songs/show'
  get 'songs/edit'
  get 'artists/index'
  get 'artists/new'
  get 'artists/show'
  get 'artists/edit'
  get 'billboards/index'
  get 'billboards/new'
  get 'billboards/show'
  get 'billboards/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
