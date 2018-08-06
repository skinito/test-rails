Rails.application.routes.draw do

  get 'sessions/new'
  root to: 'users#index'
  get 'signup', to: 'users#new'
  resources :users

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get '/club', to: 'pages_club#club'

  get '*path' => redirect { |p, req| req.flash[:error] = "Pour acceder à cette page log toi 😉"; '/login' }
end
