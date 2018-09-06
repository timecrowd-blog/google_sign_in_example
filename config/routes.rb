Rails.application.routes.draw do
  root 'welcome#index'
  get 'login', to: 'logins#new'
  get 'login/create', to: 'logins#create', as: :create_login
end
