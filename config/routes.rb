Rails.application.routes.draw do
  
  devise_for :users
  resources :asistentes
  root to: 'asitente#index'

end
