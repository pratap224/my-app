Rails.application.routes.draw do
  get 'users/index'

  get 'users/new'

  get 'users/show/:id' => 'users#show', as:  'users_show'

  get 'users/edit/:id' => 'users#edit',  as: 'users_edit'
  get 'users/create'
  post 'users/create'
  post 'articles/update/:id' => 'users#update', as: 'users_update'
  get   'users/destroy/:id' => 'users#destroy', as: 'users_destroy' 
  get 'articles/index'

  get 'articles/new'
  post 'articles/create'

  get 'articles/show/:id'  => 'articles#show', as: 'articles_show'

  get 'articles/edit/:id'  => 'articles#edit', as: 'articles_edit'

  get 'articles/destroy/:id' => 'articles#destroy', as: 'articles_destroy'

  get 'articles/create'

  post 'articles/update/:id' => 'articles#update', as: 'aricles_update'
 
  get 'details/index'
 

  get 'details/new'
  post 'details/create'
  get 'details/edit/:id' => 'details#edit', as: 'det_edit'
  post 'details/edit' => 'details#temporary'  
  get 'posts/index'
  get 'details/show/:id' => 'details#show', as: 'details_show'
  get 'posts/new'
   get 'details/destroy/:id' => 'details#destroy', as: 'details_destroy'
  get 'posts/create'
  get 'posts/show'
  post 'details/update'
  resources :posts 
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'posts#index'

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
