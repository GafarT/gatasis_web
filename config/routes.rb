GatasisWeb::Application.routes.draw do

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get '/signup' => 'users#new'
  get '/signin' => 'sessions#new'
  match '/signout' => 'sessions#destroy', via: 'delete'

  resources :frontpages

  # Nanti coba dicek kembali kenapa tanpa ini tidak bisa jalan websitenya
  get 'industry/:name' => 'industries#show'
   # Nanti coba dicek kembali kenapa tanpa ini tidak bisa jalan websitenya
  get 'sub_categories/new' => 'sub_categories#new'
  get 'sub_categories/:name' => 'sub_categories#show'

     # Nanti coba dicek kembali kenapa tanpa ini tidak bisa jalan websitenya
  get 'categories/new' => 'categories#new'
  get 'categories/:name' => 'products#list'

     # Nanti coba dicek kembali kenapa tanpa ini tidak bisa jalan websitenya
  get 'products/details/:name' => 'products#details'

  resources :industries
  resources :sub_categories
  resources :categories
  
  resources :relation_industries

  resources :products

  root 'static_pages#home'
  get '/products' => 'static_pages#products'
  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'
  get '/solutions' => 'static_pages#solutions'
  get '/catalog' => 'static_pages#catalog'
  get '/subcat' => 'static_pages#subcat'
  get '/spec' => 'static_pages#spec'
  get '/services' => 'static_pages#services'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
