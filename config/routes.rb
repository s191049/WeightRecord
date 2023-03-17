Rails.application.routes.draw do
  get 'weight_records/new'
  post 'weight_records/create'
  get 'weight_records/index'
  get 'weight_records/show/:id', to:'weight_records#show', as: 'weight_records_show'
  get 'weight_records/show'
  get 'weight_records/edit/:id', to:'weight_records#edit', as: 'weight_records_edit'
  patch 'weight_records/update/:id', to:'weight_records#update', as: 'weight_records_update'
  delete 'weight_records/destroy/:id', to:'weight_records#destroy', as: 'weight_records_destroy'
  get 'members/new'
  post 'members/create'
  get 'members/index'
  get 'members/show/:id', to:'members#show', as: 'members_show'
  get 'members/show/name/:name', to:'members#show', as: 'members_name_show'
  get 'members/edit/:id', to:'members#edit', as: 'members_edit'
  patch 'members/update/:id', to:'members#update', as: 'members_update'
  delete 'members/destroy/:id', to: 'members#destroy', as: 'members_destroy'
  root 'static_pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
