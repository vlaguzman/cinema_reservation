Rails.application.routes.draw do
  resource :user
  resource :movie

  root 'home#index'
end
