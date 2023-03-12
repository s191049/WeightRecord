Rails.application.routes.draw do
  get 'weight_records/new'
  get 'weight_records/create'
  get 'weight_records/index'
  get 'weight_records/show'
  get 'weight_records/edit'
  get 'weight_records/update'
  get 'weight_records/destroy'
  get 'weight_record/new'
  get 'weight_record/create'
  get 'weight_record/index'
  get 'weight_record/show'
  get 'weight_record/edit'
  get 'weight_record/update'
  get 'weight_record/destroy'
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
