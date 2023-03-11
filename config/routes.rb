Rails.application.routes.draw do
  get 'members/new'
  get 'members/create'
  get 'members/index'
  get 'members/show'
  get 'members/edit'
  get 'members/update'
  get 'members/destroy'
  root 'static_pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
