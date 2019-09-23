Rails.application.routes.draw do
  resource :user

  root 'users#index'
end
