Gigsite::Application.routes.draw do
  
  

  devise_for :users
  get "sort_gigs/design"
  get "sort_gigs/develop"
  get "sort_gigs/country"
  get "sort_gigs/donation"
  get "design/develop"
  get "design/country"
  get "design/donation"
  get "picture/image_file"
  get "profiles/show"
  get "site/index"
  #devise_for :users
  devise_for :users do
    get '/sign_out' => 'devise/sessions#destroy', :as => "sign_out"
    get '/sign_in' => 'devise/sessions#new', :as => "sign_in"
    get '/register' => 'devise/registrations#new', :as => "register"
    get '/log_out' => 'devise/registrations#destroy', :as => "log_out"
  end
 

  resources :jobbers
  root :to => 'jobbers#index'
  get '/:id', :to => 'profiles#show'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
