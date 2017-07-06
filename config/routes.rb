Rails.application.routes.draw do
  devise_for :users
  # Nests the reviews inside of the books route.
  resources :books do
    resources :reviews
  end
  root 'books#index'
end
