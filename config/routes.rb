Rails.application.routes.draw do

  resources :hobbies, only: [:create, :destroy, :show, :update]
  resources :about_mes,     only: [:create, :destroy, :show, :index]
  resources :photos,    only: [:create, :destroy, :show, :index]
  resources :web_projects, only: [:create, :destroy, :show, :update]
  resources :favourite_things,     only: [:create, :destroy, :show, :index]

end
