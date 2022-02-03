Rails.application.routes.draw do
  root 'articles#home'
  get 'about', to: 'articles#about'
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
