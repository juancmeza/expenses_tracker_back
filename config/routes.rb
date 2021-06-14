Rails.application.routes.draw do
  resources :expenses
  resources :categories
  resources :users

  get 'users/expenses_by_categories/:id', :to => 'users#expenses_by_categories'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
