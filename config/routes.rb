Rails.application.routes.draw do
  root 'products#index'

  get 'products/new', to: "products#new", as: "new_product"

  get 'products/:id/edit', to: "products#edit", as: "edit_product" 

  post 'products', to: "products#create"

  patch '/products/:id', to: 'products#update'

  delete '/products/:id', to: 'products#destroy', as: "product"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
