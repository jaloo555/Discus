Rails.application.routes.draw do
  mount RailsEmailPreview::Engine, at: 'emails'
  root to: 'home#show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Thredded::Engine => '/forum'
  resources :users, only: [:show]
  get '/easteregg', to: 'home#teacher', as: 'teacher'
end
