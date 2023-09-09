Rails.application.routes.draw do
  devise_for :users
  # resources :recipe_foods
  resources :foods
  # resources :recipes
  resources :recipes do 
    resources :recipe_foods, as: 'foods'
  end
  resources :users
  resources :public_recipes
  get "general_shopping_list", to: "general_shopping_list#index"
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end