LeadTracker::Application.routes.draw do

  get "lead_notes/get_notes"
  resources :lead_notes


  get "schedule/add_appointment"

  get "schedule/get_appointments"

  resources :partner_types


  resource :session

  match '/login' => "sessions#new", :as => "login"

  match '/logout' => "sessions#destroy", :as => "logout"

  resources :packages


  resources :installers


  resources :users


  match 'leads/new_lead' => "leads#new_lead"
  match 'leads/my_lead_status' => "leads#my_lead_status"
  match 'leads/partner_lead_status' => "leads#partner_lead_status"
  match 'leads/lead_admin' => "leads#lead_admin"
  resources :leads


  match 'agents/start' => "agents#start"# , :as => "start"

  resources :agents


  resources :partners


  resources :appointments


  resources :steps_logs


  resources :lead_steps


  resources :lead_sources


  resources :installer_statuses


  resources :agent_statuses


  resources :partner_statuses


  resources :package_statuses


  resources :appointment_statuses


  resources :contact_statuses


  resources :lead_statuses


  resources :contact_types


  resources :user_types


  resources :agent_types


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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
