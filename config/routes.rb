Omrails::Application.routes.draw do
  get "users/show"

  resources :projects

  devise_for :users
  match 'users/:id' => 'users#show', as: :user

  get 'faq' => 'pages#faq'

  root :to => 'projects#index'

end
