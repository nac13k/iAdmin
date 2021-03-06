IAdmin::Application.routes.draw do

  get "home/index"

  get "home/acerca_de"

  get "home/logout"

  get "home/acceso_denegado" => "home#acceso_denegado"

  post "home/login"

  post "events/upload"
  get "events/:id/download" => "events#download"
  get "events/:id/:event/change_doc" => "events#change_attribute_doc"
  post "events/list_users" => "events#list_users"
  post "events/list_participant_type"
  post "events/addParticipante"
  match "events/participants"
  post "events/update_file"
  delete "events/:id/delete_file" => "events#delete_file"


  resources :event_permissions


  resources :places


  resources :documents


  resources :participant_types


  resources :permissions


  resources :event_types


  resources :events


  resources :person_types


  resources :profiles


  resources :users


  resources :people

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
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
