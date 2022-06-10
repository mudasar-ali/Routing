Rails.application.routes.draw do
  # get       'products',      to: "products#index",      as: "products"
  # #verb      URI           controller+action             prefix(products_path)
  # get 'products/:id', to: "products#show", as: "product"
  root "shops#index"
  resources :shops do
   resources :products
  end
end

