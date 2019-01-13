Rails.application.routes.draw do
  get 'welcome/index'
resources :quotes
root 'welcome#index'


end