Rails.application.routes.draw do
  
  devise_for :users, path_names: { sign_in: 'login', sign_up: 'register' }
  resources :asistentes
  root to: 'asistentes#index'

end
