CouponSpecials::Application.routes.draw do
  
  # post "session_user/update_locations" => 'session_user#update_locations'
  # post "session_user/update_specials" => 'session_user#update_specials'
  # get "session_user/show_user" => 'session_user#show_user'
  # get "session_user/show_vendor" => 'session_user#show_vendor'	

  resources :session_user, :only => [:new , :create, :destroy]
  get "session_user/show_user" => 'session_user#show_user'
  get "session_user/show_vendor" => 'session_user#show_vendor'
  resources :location, :only => [:new, :create, :show, :index]

  post "session_user/update_locations" => 'session_user#update_locations'
  post "session_user/update_specials" => 'session_user#update_specials'

  get "users/index"
  get "users/new"
  post "users/create" => 'users#create'

  get "users/edit"
  get "users/show"
  get "users/update"
  get "users/destroy"
  get "welcome/index"

  root 'welcome#index'

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
