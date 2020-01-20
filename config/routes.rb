Rails.application.routes.draw do
  resource :user
  resource :movie

  root 'movies#index'
end
