Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root                            to: 'companies#index'
  get '/',                        to: 'companies#index'
  get '/login',                   to: 'sessions#new'
  post '/login',                  to: 'sessions#create'
  delete '/logout',               to: 'sessions#destroy'
  resources :companies do
    resources :users, controller: 'companies/users' do
      resources :keirekisyo, controller: 'companies/users/keirekisyo'
    end
  end
  resources :users
  resources :keirekisyos
  resources :ankens
end
