ReturnMockup::Application.routes.draw do
resources :products
  resources :pin_attributes

  root to: 'returns#index'
  get "home/index"


  resource :returns do
    get :index
    post :order_num
    get :review
    post :final_step
    get :all_returns
    #get :success
    get :shipping_label
    get :truncate_tables
    post :validate_orders
    get :canvas_test
    get :success_confirmation
    get 'show/:id'=>"returns#show", :as=>"show"
    get :return_orders
  end

  resource :attributes do
    get "/"=>"attributes#index"
    get 'all'=>"attributes#all"
    get 'edit/:id'=>"attributes#edit", :as=>"edit"
    patch '/:id', to: "attributes#update", :as=>"update"
  end





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
